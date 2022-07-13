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
      query: json['query'] == null
          ? null
          : CatalogQuery.fromJson(json['query'] as Map<String, dynamic>),
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
      'query': instance.query?.toJson(),
      'limit': instance.limit,
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
