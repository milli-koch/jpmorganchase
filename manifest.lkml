project_name: "jpmorganchase"

constant: group_label {
  value: "{% if _explore._name != _view._name %} {{ _view._name }} {% endif %}"
}

constant: label {
  value: "{% if _explore._name == _view._name %} {{ _field._name | remove_first: _view._name | remove: '.' }} {% else %} {{ _field._name }} {% endif %}"
}

constant: group_item_label{
  value: "{{ _field._name | remove_first: _view._name | remove: '.' }}"
  }
