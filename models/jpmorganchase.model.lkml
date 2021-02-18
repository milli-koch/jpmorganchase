connection: "the_look"

include: "/views/**/*.view"
include: "../labels.lkml"

explore: BusinessUnit {
  view_name: BusinessUnit
  from: BusinessUnit
}

explore: Commitment {
  extends: [BusinessUnit]
  view_label: "BookingBusinessUnit"
  join: Commitment {
  }
}

explore: Party {
  view_name: Industry
  from: Industry
  join: Party {
  }
}

explore: LoanPosition {
  extends: [Commitment, Party]
  view_name: BookingBusinessUnit
  view_label: "Commitment"

  join: LoanPosition {}

  join: Balances {
    view_label: "Balances"
    from: LoanBalance
  }

  join: bookingBusinessUnit {
    view_label: "BookingBusinessUnit"
    from: BusinessUnit
  }

  join: RevenueBusinessUnit {
    view_label: "Balances"
    from: BusinessUnit
  }

  join: Industry {
    view_label: "Party"
  }
}
