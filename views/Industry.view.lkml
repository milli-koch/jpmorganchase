view: Industry {
  sql_table_name: demo_db.events ;;

  dimension: partyID {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: industrySegment {
    type: number
    sql: ${TABLE}.type_id ;;
  }
}
