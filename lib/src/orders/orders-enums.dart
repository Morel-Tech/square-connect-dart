/// Indicates how the tax is applied to the associated line item or order.
enum OrderLineItemTaxType {
  /// Used for reporting only. The original transaction tax type is currently not supported by the API.
  unknownTax,

  /// The tax is an additive tax. The tax amount is added on top of the price. For example, a $1.00 item with a 10% additive tax would have a total cost to the buyer of $1.10.
  additive,

  /// The tax is an inclusive tax. Inclusive taxes are already included in the line item price or order total. For example, a $1.00 item with a 10% inclusive tax would have a pre-tax cost of $0.91 (91 cents) and a $0.09 (9 cents) tax for a total cost of $1 to the buyer.
  inclusive,
}

/// Indicates whether this is a line item or order level tax.
enum OrderLineItemTaxScope {
  /// Used for reporting only. The original transaction tax scope is currently not supported by the API.
  otherTaxScope,

  /// The tax should be applied to a single line item.
  lineItem,

  /// The tax should be applied to the entire order.
  order,
}

/// Indicates how the discount is applied to the associated line item or order.
enum OrderLineItemDiscountType {
  /// Used for reporting only. The original transaction discount type is currently not supported by the API.
  unknownDiscount,

  /// Apply the discount as a fixed percentage (e.g., 5%) off the item price.
  fixedPercentage,

  /// Apply the discount as a fixed monetary value (e.g., $1.00) off the item price.
  fixedAmount,

  /// Apply the discount as a variable percentage specified at time of the purchase.
  variablePercentage,

  /// Apply the discount as a variable monetary value specified at time of the purchase.
  variableAmount,
}

/// Indicates whether this is a line item or order level discount.
enum OrderLineItemDiscountScope {
  /// Used for reporting only. The original transaction discount scope is currently not supported by the API.
  otherDiscountScope,

  /// The discount should be applied to a single line item.
  lineItem,

  /// The discount should be applied to the entire order.
  order,
}

/// Indicates state of the order.
enum OrderState {
  /// Indicates the order is open. Open orders may be updated.
  open,

  /// Indicates the order is completed. Completed orders are fully paid. This is a terminal state.
  completed,

  /// Indicates the order is canceled. Canceled orders are not paid. This is a terminal state.
  canceled,
}

/// Inidicates a phase in the process of calculating order totals. Service charges will be applied after the phase indicated.
enum OrderServiceChargeCalculationPhase {
  /// The service charge will be applied after discounts but before taxes.
  subtotalPhase,

  /// The service charge will be applied after both discounts and taxes are applied.
  totalPhase,
}

/// The type of fulfillment.
enum OrderFulfillmentType {
  pickup,
  shipment,
}

/// The state of the fulfillment.
enum OrderFulfillmentState {
  proposed,
  reserved,
  prepared,
  completed,
  canceled,
  failed,
}

/// The schedule type of the pickup fulfillment.
enum OrderFulfillmentPickupDetailsScheduleType {
  scheduled,
  asap,
}
