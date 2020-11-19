connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "/views/**/*.view"

datagroup: condiments_default_datagroup {
  sql_trigger: SELECT 1;;
}

persist_with: condiments_default_datagroup

explore: condiments {}

explore: izzy {}
