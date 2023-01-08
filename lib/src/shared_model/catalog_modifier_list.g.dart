// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_modifier_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogModifierList _$CatalogModifierListFromJson(Map<String, dynamic> json) =>
    CatalogModifierList(
      name: json['name'] as String?,
      selectionType: $enumDecodeNullable(
          _$CatalogModifierListSelectionTypeEnumMap, json['selection_type']),
      modifiers: (json['modifiers'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      ordinal: json['ordinal'] as int?,
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogModifierListToJson(CatalogModifierList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('selection_type',
      _$CatalogModifierListSelectionTypeEnumMap[instance.selectionType]);
  writeNotNull(
      'modifiers', instance.modifiers?.map((e) => e.toJson()).toList());
  writeNotNull('ordinal', instance.ordinal);
  writeNotNull('image_ids', instance.imageIds);
  return val;
}

const _$CatalogModifierListSelectionTypeEnumMap = {
  CatalogModifierListSelectionType.single: 'SINGLE',
  CatalogModifierListSelectionType.multiple: 'MULTIPLE',
};
