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
    SearchCatalogRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  writeNotNull('object_types', instance.objectTypes);
  writeNotNull('include_deleted_objects', instance.includeDeletedObjects);
  writeNotNull('include_related_objects', instance.includeRelatedObjects);
  writeNotNull('begin_time', instance.beginTime);
  writeNotNull('query', instance.query?.toJson());
  writeNotNull('limit', instance.limit);
  return val;
}

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
    SearchCatalogResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  val['objects'] = instance.objects.map((e) => e.toJson()).toList();
  return val;
}
