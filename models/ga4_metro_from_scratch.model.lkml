connection: "ga4_metro"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ga4_metro_from_scratch_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ga4_metro_from_scratch_default_datagroup

explore: events {
  always_filter: {
    filters: [events.event_date: "7 days"]
  }
  sql_always_where: ${events.event_name} <> 'session_start';;
  join: sessions_fact {
    relationship: many_to_one
    sql_on: ${sessions_fact.ga_session_id} = ${events.ga_session_id} ;;
  }
}
