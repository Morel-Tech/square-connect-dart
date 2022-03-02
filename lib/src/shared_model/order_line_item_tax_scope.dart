import 'package:json_annotation/json_annotation.dart';

/// Indicates whether this is a line item or order level tax.
enum OrderLineItemTaxScope {
  /// Used for reporting only. The original transaction tax scope is currently
  /// not supported by the API.
  @JsonValue('OTHER_TAX_SCOPE')
  otherTaxScope,

  /// The tax should be applied to a single line item.
  @JsonValue('LINE_ITEM')
  lineItem,

  /// The tax should be applied to the entire order.
  @JsonValue('ORDER')
  order,
}
