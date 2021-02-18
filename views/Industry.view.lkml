view: Industry {
  sql_table_name: demo_db.events ;;

  dimension: partyID {
    primary_key: yes
    group_label: "{% if _explore._name != _view._name %} {{ _view._name }} {% endif %}"
    label: "{% if _explore._name == _view._name %} {{ _field._name | remove_first _view._name }}
    {% else %} {{ _field._name }} {% endif %}"
    group_item_label: "{{ _field._name | remove_first: _view._name | remove: '.' }}"
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: industrySegment {
    group_label: "{% if _explore._name != _view._name %} {{ _view._name }} {% endif %}"
    label: "{% if _explore._name == _view._name %} {{ _field._name | remove_first _view._name }}
    {% else %} {{ _field._name }} {% endif %}"
    group_item_label: "{{ _field._name | remove_first: _view._name | remove: '.' }}"
    type: number
    sql: ${TABLE}.type_id ;;
  }
}
