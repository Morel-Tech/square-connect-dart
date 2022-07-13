// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query_items_for_modifier_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQueryItemsForModifierList _$CatalogQueryItemsForModifierListFromJson(
        Map<String, dynamic> json) =>
    CatalogQueryItemsForModifierList(
      modifierListIds: (json['modifier_list_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogQueryItemsForModifierListToJson(
        CatalogQueryItemsForModifierList instance) =>
    <String, dynamic>{
      'modifier_list_ids': instance.modifierListIds,
    };
