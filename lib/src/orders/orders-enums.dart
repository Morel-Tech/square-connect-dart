enum OrderLineItemTaxType {
  unknownTax,
  additive,
  inclusive,
}

enum OrderLineItemTaxScope {
  otherTaxScope,
  lineItem,
  order,
}

enum OrderLineItemDiscountType {
  unknownDiscount,
  fixedPercentage,
  fixedAmount,
  variablePercentage,
  variableAmount,
}

enum OrderLineItemDiscountScope {
  otherDiscountScope,
  lineItem,
  order,
}



enum OrderState {
  open,
  completed,
  canceled,
}



enum OrderServiceChargeCalculationPhase {
  subtotalPhase,
  totalPhase,
}



enum OrderFulfillmentType {
  pickup,
}


enum OrderFulfillmentState {
  proposed,
  reserved,
  prepared,
  completed,
  canceled,
  failed,
}


enum OrderFulfillmentPickupDetailsScheduleType {
  scheduled,
  asap,
}

