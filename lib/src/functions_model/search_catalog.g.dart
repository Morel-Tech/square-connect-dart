// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_catalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCatalogRequest _$SearchCatalogRequestFromJson(
        Map<String, dynamic> json) =>
    SearchCatalogRequest(
      cursor: json['cursor'] as String?,
      objectTypes: (json['object_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      includeDeletedObjects: json['include_deleted_objects'] as bool?,
      includeRelatedObjects: json['include_related_objects'] as bool?,
      beginTime: json['begin_time'] as String?,
      query: _$enumDecodeNullable(_$CatalogQueryTypeEnumMap, json['query']),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$SearchCatalogRequestToJson(
        SearchCatalogRequest instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'object_types': instance.objectTypes,
      'include_deleted_objects': instance.includeDeletedObjects,
      'include_related_objects': instance.includeRelatedObjects,
      'begin_time': instance.beginTime,
      'query': _$CatalogQueryTypeEnumMap[instance.query],
      'limit': instance.limit,
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$CatalogQueryTypeEnumMap = {
  CatalogQueryType.sortedAttributeQuery: 'SORTED_ATTRIBUTE_QUERY',
  CatalogQueryType.exactQuery: 'EXACT_QUERY',
  CatalogQueryType.prefixQuery: 'PREFIX_QUERY',
  CatalogQueryType.rangeQuery: 'RANGE_QUERY',
  CatalogQueryType.textQuery: 'TEXT_QUERY',
  CatalogQueryType.itemsForTaxQuery: 'ITEMS_FOR_TAX_QUERY',
  CatalogQueryType.itemsForModifierListQuery: 'ITEMS_FOR_MODIFIER_LIST_QUERY',
};

SearchCatalogResponse _$SearchCatalogResponseFromJson(
        Map<String, dynamic> json) =>
    SearchCatalogResponse(
      cursor: json['cursor'] as String?,
      objects: (json['objects'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchCatalogResponseToJson(
        SearchCatalogResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
      'objects': instance.objects.map((e) => e.toJson()).toList(),
    };
