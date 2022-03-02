import 'package:json_annotation/json_annotation.dart';

/// Indicates how the tax is applied to the associated line item or order.
enum OrderLineItemTaxType {
  /// Used for reporting only. The original transaction tax type is currently
  /// not supported by the API.
  @JsonValue('UNKNOWN_TAX')
  unknownTax,

  /// The tax is an additive tax. The tax amount is added on top of the price.
  /// For example, a $1.00 item with a 10% additive tax would have a total cost
  /// to the buyer of $1.10.
  @JsonValue('ADDITIVE')
  additive,

  /// The tax is an inclusive tax. Inclusive taxes are already included in the
  /// line item price or order total. For example, a $1.00 item with a 10%
  /// inclusive tax would have a pre-tax cost of $0.91 (91 cents) and a $0.09
  /// (9 cents) tax for a total cost of $1 to the buyer.
  @JsonValue('INCLUSIVE')
  inclusive,
}
