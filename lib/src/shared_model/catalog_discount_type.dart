import 'package:json_annotation/json_annotation.dart';

/// Indicates how to apply a CatalogDiscount to a CatalogItem.
enum CatalogDiscountType {
  /// Apply the discount as a fixed percentage (e.g., 5%) off the item price.
  @JsonValue('FIXED_PERCENTAGE')
  fixedPercentage,

  /// Apply the discount as a fixed amount (e.g., $1.00) off the item price.
  @JsonValue('FIXED_AMOUNT')
  fixedAmount,

  /// Apply the discount as a variable percentage off the item price. The
  /// percentage will be specified at the time of sale.
  @JsonValue('VARIABLE_PERCENTAGE')
  variablePercentage,

  /// Apply the discount as a variable amount off the item price. The amount
  /// will be specified at the time of sale.
  @JsonValue('VARIABLE_AMOUNT')
  variableAmount,
}
