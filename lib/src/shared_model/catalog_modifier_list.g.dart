// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_modifier_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogModifierList _$CatalogModifierListFromJson(Map<String, dynamic> json) =>
    CatalogModifierList(
      name: json['name'] as String,
      selectionType: _$enumDecode(
          _$CatalogModifierListSelectionTypeEnumMap, json['selection_type']),
      modifiers: (json['modifiers'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      ordinal: json['ordinal'] as int?,
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogModifierListToJson(
        CatalogModifierList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'selection_type':
          _$CatalogModifierListSelectionTypeEnumMap[instance.selectionType],
      'modifiers': instance.modifiers.map((e) => e.toJson()).toList(),
      'ordinal': instance.ordinal,
      'image_ids': instance.imageIds,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$CatalogModifierListSelectionTypeEnumMap = {
  CatalogModifierListSelectionType.single: 'SINGLE',
  CatalogModifierListSelectionType.multiple: 'MULTIPLE',
};
