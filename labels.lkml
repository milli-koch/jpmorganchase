include: "/views/**/*.view"

view: +BusinessUnit {
  dimension: busUnitID {
    group_label: "@{group_label}"
    label: "@{label}"
    group_item_label: "@{group_item_label}"
    }
  dimension: busUnitName {
    group_label: "@{group_label}"
    label: "@{label}"
    group_item_label: "@{group_item_label}"
  }
}

view: +Party {
  dimension: partyID {
    group_label: "@{group_label}"
    label: "@{label}"
    group_item_label: "@{group_item_label}"
  }
  dimension: partyName {
    group_label: "@{group_label}"
    label: "@{label}"
    group_item_label: "@{group_item_label}"
  }
}

  # view: +Industry {
  #   dimension: partyID {
  #     group_label: "@{group_label}"
  #     label: "@{label}"
  #     group_item_label: "@{group_item_label}"
  #   }
  #   dimension: industrySegment {
  #     group_label: "@{group_label}"
  #     label: "@{label}"
  #     group_item_label: "@{group_item_label}"
  # }
# }
