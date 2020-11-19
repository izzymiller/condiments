##Izzy's independent condiment survey of all DCL members, done with the initial intent of purchasing a sample of each for Dave, but that ended up looking like it would probably bankrupt me.

view: izzy {
  sql_table_name: `condiments.izzy`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: condiment {
    label: "Cleaned condiment names, grouped together."
    type: string
    sql: ${TABLE}.cleaned ;;
  }

  dimension: full_detail {
    label: "The actual raw response from the DCL analyst."
    type: string
    sql: ${TABLE}.full_detail ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
