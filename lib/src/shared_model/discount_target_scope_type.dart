import 'package:json_annotation/json_annotation.dart';

/// Indicates discount scope type for a CatalogPricingRule.
enum DiscountTargetScopeType {
  @JsonValue('WHOLE_PURCHASE')
  wholePurchase,
  @JsonValue('LINE_ITEM')
  lineItem,
}
