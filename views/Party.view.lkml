view: Party {
  sql_table_name: demo_db.users ;;

  dimension: partyID {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: partyName {
    type: string
    sql: ${TABLE}.city ;;
  }
}
