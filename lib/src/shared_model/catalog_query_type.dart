import 'package:json_annotation/json_annotation.dart';

/// Indicates a type of query made on [searchCatalog()].
enum CatalogQueryType {
  @JsonValue('SORTED_ATTRIBUTE_QUERY')
  sortedAttributeQuery,
  @JsonValue('EXACT_QUERY')
  exactQuery,
  @JsonValue('PREFIX_QUERY')
  prefixQuery,
  @JsonValue('RANGE_QUERY')
  rangeQuery,
  @JsonValue('TEXT_QUERY')
  textQuery,
  @JsonValue('ITEMS_FOR_TAX_QUERY')
  itemsForTaxQuery,
  @JsonValue('ITEMS_FOR_MODIFIER_LIST_QUERY')
  itemsForModifierListQuery,
}
