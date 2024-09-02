
view: sessions_fact {
  derived_table: {
    # increment_key: "event_date" --- warning check it out
    increment_offset: 1
    sql: select
            sl.user_pseudo_id||(select coalesce (cast(value.string_value as INT64),value.int_value) from UNNEST(sl.event_params) where key = "ga_session_id") as sl_key
            ,  COUNT(sl.event_timestamp) session_event_count
            ,  SUM(case when sl.event_name = 'page_view' then 1
                        --when sl.event_name = 'screen_view' then 1
                        else 0 end) session_page_view_count
            ,  COALESCE(SUM((select value.int_value from UNNEST(sl.event_params) where key = "engaged_session_event")),0) engaged_events
            ,  case when (COALESCE(SUM((select value.int_value from UNNEST(sl.event_params) where key = "engaged_session_event")),0) = 0
                     and COALESCE(SUM((select coalesce(SAFE_CAST(value.string_value as INT64),value.int_value) from UNNEST(sl.event_params) where key = "session_engaged"))) = 0)
                    then false else true end as is_engaged_session
                  , case when countif(event_name = 'first_visit') = 0 then false else true end as is_first_visit_session
                  , MAX(TIMESTAMP_MICROS(sl.event_timestamp)) as session_end
                  , MIN(TIMESTAMP_MICROS(sl.event_timestamp)) as session_start
                  , (MAX(sl.event_timestamp) - MIN(sl.event_timestamp))/(60 * 1000 * 1000) AS session_length_minutes
                    from `mol-and-metro-ga.analytics_436258270.events_*` AS sl
                  WHERE {% incrementcondition %} database_table_name.database_time_column {% endincrementcondition %}
        group by 1 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ga_session_id {
    type: number
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: session_event_count {
    type: number
    sql: ${TABLE}.session_event_count ;;
  }

  dimension: session_page_view_count {
    type: number
    sql: ${TABLE}.session_page_view_count ;;
  }

  dimension: engaged_events {
    type: number
    sql: ${TABLE}.engaged_events ;;
  }

  dimension: is_engaged_session {
    type: yesno
    sql: ${TABLE}.is_engaged_session ;;
  }

  dimension: is_first_visit_session {
    type: yesno
    sql: ${TABLE}.is_first_visit_session ;;
  }

  dimension_group: session_end {
    type: time
    sql: ${TABLE}.session_end ;;
  }

  dimension_group: session_start {
    type: time
    sql: ${TABLE}.session_start ;;
  }

  dimension: session_length_minutes {
    type: number
    sql: ${TABLE}.session_length_minutes ;;
  }

  #additions for dimensions and metrics

  dimension: is_bounce {
    view_label: "Behavior"
    group_label: "Page Filters"
    label: "Is Bounce?"
    description: "If this hit was the last pageview or screenview hit of a session, this is set to true."
    type: yesno
    sql: ${session_page_view_count} = 1 ;;
    full_suggestions: yes
  }

  set: detail {
    fields: [
      ga_session_id,
      session_event_count,
      session_page_view_count,
      engaged_events,
      is_engaged_session,
      is_first_visit_session,
      session_end_time,
      session_start_time,
      session_length_minutes
    ]
  }
}
