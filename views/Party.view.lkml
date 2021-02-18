view: Party {
  sql_table_name: demo_db.users ;;

  dimension: partyID {
    group_label: "{% if _explore._name != _view._name %} {{ _view._name }} {% endif %}"
    label: "{% if _explore._name == _view._name %} {{ _field._name | remove_first: _view._name | remove: '.' }} {% else %} {{ _field._name }} {% endif %}"
    group_item_label: "{{ _field._name | remove_first: _view._name | remove: '.' }}"
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: partyName {
    group_label: "{% if _explore._name != _view._name %} {{ _view._name }} {% endif %}"
    label: "{% if _explore._name == _view._name %} {{ _field._name | remove_first: _view._name | remove: '.' }} {% else %} {{ _field._name }} {% endif %}"
    group_item_label: "{{ _field._name | remove_first: _view._name | remove: '.' }}"
    type: string
    sql: ${TABLE}.city ;;
  }
}
