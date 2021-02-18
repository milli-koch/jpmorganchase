view: BusinessUnit {
  sql_table_name: demo_db.inventory_items ;;

  dimension: busUnitID {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: busUnitName {
    type: number
    sql: ${TABLE}.cost ;;
  }
}
