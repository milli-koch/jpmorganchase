view: LoanPosition {
  sql_table_name: demo_db.orders ;;

  dimension: positionID {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accountNumber {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: commitmentNumber {
    type: number
    sql: ${TABLE}.user_id ;;
  }
}
