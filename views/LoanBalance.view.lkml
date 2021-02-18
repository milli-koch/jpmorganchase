view: LoanBalance {
  sql_table_name: demo_db.order_items ;;

  dimension: positionID {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: currency {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: pendingBalance {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
}
