view: events_incremental_pdt {
  derived_table: {
    increment_key: "event_date"
    increment_offset: 1 #option to reprocess
    explore_source: events {
      column: article_id {}
      column: article_view_flag {}
      column: channel {}
      column: collected_traffic_source__dclid {}
      column: collected_traffic_source__gclid {}
      column: collected_traffic_source__manual_campaign_id {}
      column: collected_traffic_source__manual_campaign_name {}
      column: collected_traffic_source__manual_content {}
      column: collected_traffic_source__manual_creative_format {}
      column: collected_traffic_source__manual_marketing_tactic {}
      column: collected_traffic_source__manual_medium {}
      column: collected_traffic_source__manual_source {}
      column: collected_traffic_source__manual_source_platform {}
      column: collected_traffic_source__manual_term {}
      column: collected_traffic_source__srsltid {}
      column: device__advertising_id {}
      column: device__browser {}
      column: device__browser_version {}
      column: device__category {}
      column: device__operating_system {}
      column: device__operating_system_version {}
      column: event_date {}
      column: event_day_of_week {}
      column: _event_hour {}
      column: _event_minute {}
      column: event_month {}
      column: _event_time {}
      column: event_week {}
      column: event_year {}
      column: event_dimensions__hostname {}
      column: event_name {}
      column: event_previous_timestamp {}
      column: event_server_timestamp_offset {}
      column: event_value_in_usd {}
      column: event_timestamp {}
      column: ga_session_id {}
      column: geo__city {}
      column: geo__continent {}
      column: geo__country {}
      column: geo__metro {}
      column: geo__sub_continent {}
      column: is_active_user {}
      column: session_traffic_source_last_click__google_ads_campaign__account_name {}
      column: session_traffic_source_last_click__google_ads_campaign__campaign_name {}
      column: session_traffic_source_last_click__google_ads_campaign__customer_id {}
      column: session_traffic_source_last_click__google_ads_campaign__ad_group_name {}
      column: session_traffic_source_last_click__google_ads_campaign__campaign_id {}
      column: session_traffic_source_last_click__manual_campaign__campaign_id {}
      column: session_traffic_source_last_click__manual_campaign__content {}
      column: session_traffic_source_last_click__manual_campaign__creative_format {}
      column: session_traffic_source_last_click__manual_campaign__medium {}
      column: session_traffic_source_last_click__manual_campaign__source {}
      column: session_traffic_source_last_click__manual_campaign__campaign_name {}
      column: session_traffic_source_last_click__manual_campaign__marketing_tactic {}
      column: session_traffic_source_last_click__manual_campaign__term {}
      column: stream_id {}
      column: session_traffic_source_last_click__manual_campaign__source_platform {}
      column: traffic_source__name {}
      column: traffic_source__source {}
      column: traffic_source__medium {}
      column: user_first_touch_timestamp {}
      column: user_id {}
      column: user_pseudo_id {}
      column: video_id {}
      column: video_view_flag {}
      column: count {}
      column: total_page_views {}
      column: total_video_views {}
      column: total_article_views {}
      filters: {
        field: events.event_date
        value: "7 days"
      }
    }
  }
  dimension: article_id {
    description: ""
  }
  dimension: article_view_flag {
    description: ""
    type: number
  }
  dimension: channel {
    description: ""
  }
  dimension: collected_traffic_source__dclid {
    description: ""
  }
  dimension: collected_traffic_source__gclid {
    description: ""
  }
  dimension: collected_traffic_source__manual_campaign_id {
    description: ""
  }
  dimension: collected_traffic_source__manual_campaign_name {
    description: ""
  }
  dimension: collected_traffic_source__manual_content {
    description: ""
  }
  dimension: collected_traffic_source__manual_creative_format {
    description: ""
  }
  dimension: collected_traffic_source__manual_marketing_tactic {
    description: ""
  }
  dimension: collected_traffic_source__manual_medium {
    description: ""
  }
  dimension: collected_traffic_source__manual_source {
    description: ""
  }
  dimension: collected_traffic_source__manual_source_platform {
    description: ""
  }
  dimension: collected_traffic_source__manual_term {
    description: ""
  }
  dimension: collected_traffic_source__srsltid {
    description: ""
  }
  dimension: device__advertising_id {
    description: ""
  }
  dimension: device__browser {
    description: ""
  }
  dimension: device__browser_version {
    description: ""
  }
  dimension: device__category {
    description: ""
  }
  dimension: device__operating_system {
    description: ""
  }
  dimension: device__operating_system_version {
    description: ""
  }
  dimension: event_date {
    description: ""
    type: date
  }
  dimension: event_day_of_week {
    description: ""
    type: date_day_of_week
  }
  dimension: _event_hour {
    label: "Events Event Hour"
    description: ""
    type: date_hour
  }
  dimension: _event_minute {
    label: "Events Event Minute"
    description: ""
    type: date_minute
  }
  dimension: event_month {
    description: ""
    type: date_month
  }
  dimension: _event_time {
    label: "Events Event Time"
    description: ""
    type: date_time
  }
  dimension: event_week {
    description: ""
    type: date_week
  }
  dimension: event_year {
    description: ""
    type: date_year
  }
  dimension: event_dimensions__hostname {
    description: ""
  }
  dimension: event_name {
    description: ""
  }
  dimension: event_previous_timestamp {
    description: ""
    type: number
  }
  dimension: event_server_timestamp_offset {
    description: ""
    type: number
  }
  dimension: event_value_in_usd {
    description: ""
    type: number
  }
  dimension: event_timestamp {
    description: ""
    type: number
  }
  dimension: ga_session_id {
    description: ""
    type: number
  }
  dimension: geo__city {
    description: ""
  }
  dimension: geo__continent {
    description: ""
  }
  dimension: geo__country {
    description: ""
  }
  dimension: geo__metro {
    description: ""
  }
  dimension: geo__sub_continent {
    description: ""
  }
  dimension: is_active_user {
    label: "Events Is Active User (Yes / No)"
    description: ""
    type: yesno
  }
  dimension: session_traffic_source_last_click__google_ads_campaign__account_name {
    description: ""
  }
  dimension: session_traffic_source_last_click__google_ads_campaign__campaign_name {
    description: ""
  }
  dimension: session_traffic_source_last_click__google_ads_campaign__customer_id {
    description: ""
  }
  dimension: session_traffic_source_last_click__google_ads_campaign__ad_group_name {
    description: ""
  }
  dimension: session_traffic_source_last_click__google_ads_campaign__campaign_id {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__campaign_id {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__content {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__creative_format {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__medium {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__source {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__campaign_name {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__marketing_tactic {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__term {
    description: ""
  }
  dimension: stream_id {
    description: ""
  }
  dimension: session_traffic_source_last_click__manual_campaign__source_platform {
    description: ""
  }
  dimension: traffic_source__name {
    description: ""
  }
  dimension: traffic_source__source {
    description: ""
  }
  dimension: traffic_source__medium {
    description: ""
  }
  dimension: user_first_touch_timestamp {
    description: ""
    type: number
  }
  dimension: user_id {
    description: ""
  }
  dimension: user_pseudo_id {
    description: ""
  }
  dimension: video_id {
    description: ""
  }
  dimension: video_view_flag {
    description: ""
    type: number
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: total_page_views {
    description: ""
    type: number
  }
  dimension: total_video_views {
    description: ""
    type: number
  }
  dimension: total_article_views {
    description: ""
    type: number
  }
}
