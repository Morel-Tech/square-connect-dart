import 'package:json_annotation/json_annotation.dart';

/// Indicates whether the price of a CatalogItemVariation should be entered
/// manually at point of sale
enum CatalogPricingType {
  @JsonValue('FIXED_PRICING')
  fixedPricing,
  @JsonValue('VARIABLE_PRICING')
  variablePricing,
}
