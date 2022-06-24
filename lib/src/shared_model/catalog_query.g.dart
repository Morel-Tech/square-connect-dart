// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQuery _$CatalogQueryFromJson(Map<String, dynamic> json) => CatalogQuery(
      sortedAttributeQuery: json['sorted_attribute_query'] == null
          ? null
          : CatalogQuerySortedAttribute.fromJson(
              json['sorted_attribute_query'] as Map<String, dynamic>),
      exactQuery: json['exact_query'] == null
          ? null
          : CatalogQueryExact.fromJson(
              json['exact_query'] as Map<String, dynamic>),
      setQuery: json['set_query'] == null
          ? null
          : CatalogQuerySet.fromJson(json['set_query'] as Map<String, dynamic>),
      prefixQuery: json['prefix_query'] == null
          ? null
          : CatalogQueryPrefix.fromJson(
              json['prefix_query'] as Map<String, dynamic>),
      rangeQuery: json['range_query'] == null
          ? null
          : CatalogQueryRange.fromJson(
              json['range_query'] as Map<String, dynamic>),
      textQuery: json['text_query'] == null
          ? null
          : CatalogQueryText.fromJson(
              json['text_query'] as Map<String, dynamic>),
      itemsForTaxQuery: json['items_for_tax_query'] == null
          ? null
          : CatalogQueryItemsForTax.fromJson(
              json['items_for_tax_query'] as Map<String, dynamic>),
      itemsForModifierListQuery: json['items_for_modifier_list_query'] == null
          ? null
          : CatalogQueryItemsForModifierList.fromJson(
              json['items_for_modifier_list_query'] as Map<String, dynamic>),
      itemsForItemOptionsQuery: json['items_for_item_options_query'] == null
          ? null
          : CatalogQueryItemsForItemOptions.fromJson(
              json['items_for_item_options_query'] as Map<String, dynamic>),
      itemVariationsForItemOptionValuesQuery:
          json['item_variations_for_item_option_values_query'] == null
              ? null
              : CatalogQueryItemVariationsForItemOptionValues.fromJson(
                  json['item_variations_for_item_option_values_query']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogQueryToJson(CatalogQuery instance) =>
    <String, dynamic>{
      'sorted_attribute_query': instance.sortedAttributeQuery?.toJson(),
      'exact_query': instance.exactQuery?.toJson(),
      'set_query': instance.setQuery?.toJson(),
      'prefix_query': instance.prefixQuery?.toJson(),
      'range_query': instance.rangeQuery?.toJson(),
      'text_query': instance.textQuery?.toJson(),
      'items_for_tax_query': instance.itemsForTaxQuery?.toJson(),
      'items_for_modifier_list_query':
          instance.itemsForModifierListQuery?.toJson(),
      'items_for_item_options_query':
          instance.itemsForItemOptionsQuery?.toJson(),
      'item_variations_for_item_option_values_query':
          instance.itemVariationsForItemOptionValuesQuery?.toJson(),
    };
