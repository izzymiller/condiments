### Condiment preference research performed by Dave Connors while on chat with Looker's DCL

view: condiments {
  sql_table_name: `condiments.dave`
    ;;

  dimension: condiment {
    type: string
    sql: ${TABLE}.condiment ;;
  }

  dimension: is_condiment {
    type: yesno
    sql: ${TABLE}.is_condiment ;;
  }

  dimension: is_holy_trinity_kmr {
    type: yesno
    sql: ${TABLE}.is_in_holy_trinity__K_M_R_;;
  }

  dimension: is_mayo_product {
    type: yesno
    sql: ${TABLE}.is_mayo_product_;;
  }

  dimension: is_spicy {
    type: yesno
    sql: ${TABLE}.is_spicy_ ;;
  }

  dimension: name {
    type: string
    primary_key: yes
    sql: ${TABLE}.agent ;;
  }

  measure: count {
    type: count
    drill_fields: [name,condiment]
  }

  measure: count_spicy {
    type: count
    filters: [is_spicy: "yes"]
    drill_fields: [name,condiment]
  }
  measure: count_kmr {
    type: count
    filters: [is_holy_trinity_kmr: "yes"]
    drill_fields: [name,condiment]
  }
  measure: count_mayo {
    type: count
    filters: [is_mayo_product: "yes"]
    drill_fields: [name,condiment]
  }
  measure: count_not_condiment {
    type: count
    filters: [is_condiment: "no"]
    drill_fields: [name,condiment]
  }
}
