connection: "ga4_mol"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ga4_mol_ios_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ga4_mol_ios_default_datagroup

