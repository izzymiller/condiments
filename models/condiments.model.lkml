connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "/views/**/*.view"

datagroup: condiments_default_datagroup {
  sql_trigger: SELECT 1;;
}

persist_with: condiments_default_datagroup

explore: condiment_preferences {
  description: "Catalog of DCL analyst condiment preferences, as performed by Dave Connors on live chat."
  view_name: condiments
}

explore: izzy {
  hidden: yes
  label: "Izzy's Condiment Survey"
  description: "Izzy's survey of the DCL's condiment preferences, done as complement to Dave's work in an effort to purchase a lot of condiments for dave."
}
