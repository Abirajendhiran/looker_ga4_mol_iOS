connection: "ga4_mol"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ga4_mol_ios_default_datagroup {
  sql_trigger: SELECT max(event_date) from `mol-and-metro-ga.analytics_432532749.events_*`;;
  max_cache_age: "1 hour"
}

persist_with: ga4_mol_ios_default_datagroup

explore: events {
  always_filter: {
    filters: [events.event_date: "2 days"]
  }
  sql_always_where: ${event_name} <> 'session_start' and ${stream_id} = '8199972794';;
}
