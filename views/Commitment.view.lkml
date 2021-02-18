view: Commitment {
  sql_table_name: demo_db.products ;;

  dimension: positionID {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: commitmentNumber {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: busUnitID {
    type: string
    sql: ${TABLE}.category ;;
  }
}
