// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_modifier_list_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItemModifierListInfo _$CatalogItemModifierListInfoFromJson(
        Map<String, dynamic> json) =>
    CatalogItemModifierListInfo(
      modifierListId: json['modifier_list_id'] as String,
      modifierOverrides: (json['modifier_overrides'] as List<dynamic>?)
          ?.map((e) =>
              CatalogModifierOverride.fromJson(e as Map<String, dynamic>))
          .toList(),
      minSelectedModifiers: json['min_selected_modifiers'] as int?,
      maxSelectedModifiers: json['max_selected_modifiers'] as int?,
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$CatalogItemModifierListInfoToJson(
    CatalogItemModifierListInfo instance) {
  final val = <String, dynamic>{
    'modifier_list_id': instance.modifierListId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('modifier_overrides',
      instance.modifierOverrides?.map((e) => e.toJson()).toList());
  writeNotNull('min_selected_modifiers', instance.minSelectedModifiers);
  writeNotNull('max_selected_modifiers', instance.maxSelectedModifiers);
  writeNotNull('enabled', instance.enabled);
  return val;
}
