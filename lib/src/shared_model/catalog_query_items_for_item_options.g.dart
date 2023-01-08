// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query_items_for_item_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQueryItemsForItemOptions _$CatalogQueryItemsForItemOptionsFromJson(
        Map<String, dynamic> json) =>
    CatalogQueryItemsForItemOptions(
      itemOptionIds: (json['item_option_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogQueryItemsForItemOptionsToJson(
    CatalogQueryItemsForItemOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_option_ids', instance.itemOptionIds);
  return val;
}
