import 'package:json_annotation/json_annotation.dart';

/// Indicates the type of CatalogObject.
enum CatalogObjectType {
  @JsonValue('ITEM')
  item,
  @JsonValue('ITEM_VARIATION')
  itemVariation,
  @JsonValue('MODIFIER')
  modifier,
  @JsonValue('MODIFIER_LIST')
  modifierList,
  @JsonValue('CATEGORY')
  category,
  @JsonValue('DISCOUNT')
  discount,
  @JsonValue('TAX')
  tax,
  @JsonValue('IMAGE')
  image,
  @JsonValue('PRICING_RULE')
  pricingRule,
  @JsonValue('PRODUCT_SET')
  productSet,
  @JsonValue('TIME_PERIOD')
  timePeriod,
}
