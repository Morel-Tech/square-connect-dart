import 'package:json_annotation/json_annotation.dart';

/// Indicates how the discount is applied to the associated line item or order.
enum OrderLineItemDiscountType {
  /// Used for reporting only. The original transaction discount type is
  /// currently not supported by the API.
  @JsonValue('UNKNOWN_DISCOUNT')
  unknownDiscount,

  /// Apply the discount as a fixed percentage (e.g., 5%) off the item price.
  @JsonValue('FIXED_PERCENTAGE')
  fixedPercentage,

  /// Apply the discount as a fixed monetary value (e.g., $1.00) off the item
  /// price.
  @JsonValue('FIXED_AMOUNT')
  fixedAmount,

  /// Apply the discount as a variable percentage specified at time of the
  /// purchase.
  @JsonValue('VARIABLE_PERCENTAGE')
  variablePercentage,

  /// Apply the discount as a variable monetary value specified at time of the
  /// purchase.
  @JsonValue('VARIABLE_AMOUNT')
  variableAmount,
}
