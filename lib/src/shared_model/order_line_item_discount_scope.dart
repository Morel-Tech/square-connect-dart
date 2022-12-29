import 'package:json_annotation/json_annotation.dart';

/// Indicates whether this is a line item or order level discount.
enum OrderLineItemDiscountScope {
  /// Used for reporting only. The original transaction discount scope is
  /// currently not supported by the API.
  @JsonValue('OTHER_DISCOUNT_SCOPE')
  otherDiscountScope,

  /// The discount should be applied to a single line item.
  @JsonValue('LINE_ITEM')
  lineItem,

  /// The discount should be applied to the entire order.
  @JsonValue('ORDER')
  order,
}
