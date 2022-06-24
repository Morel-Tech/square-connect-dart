// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query_items_for_item_option_values_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQueryItemVariationsForItemOptionValues
    _$CatalogQueryItemVariationsForItemOptionValuesFromJson(
            Map<String, dynamic> json) =>
        CatalogQueryItemVariationsForItemOptionValues(
          itemOptionValueIds: (json['item_option_value_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$CatalogQueryItemVariationsForItemOptionValuesToJson(
        CatalogQueryItemVariationsForItemOptionValues instance) =>
    <String, dynamic>{
      'item_option_value_ids': instance.itemOptionValueIds,
    };
