// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_retrieve_catalog_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchRetrieveCatalogObjectsRequest _$BatchRetrieveCatalogObjectsRequestFromJson(
        Map<String, dynamic> json) =>
    BatchRetrieveCatalogObjectsRequest(
      objectIds: (json['object_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      includeRelatedObjects: json['include_related_objects'] as bool?,
      catalogVersion: json['catalog_version'] as int?,
      includeDeletedObjects: json['include_deleted_objects'] as bool?,
    );

Map<String, dynamic> _$BatchRetrieveCatalogObjectsRequestToJson(
    BatchRetrieveCatalogObjectsRequest instance) {
  final val = <String, dynamic>{
    'object_ids': instance.objectIds,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('include_related_objects', instance.includeRelatedObjects);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('include_deleted_objects', instance.includeDeletedObjects);
  return val;
}

BatchRetrieveCatalogObjectsResponse
    _$BatchRetrieveCatalogObjectsResponseFromJson(Map<String, dynamic> json) =>
        BatchRetrieveCatalogObjectsResponse(
          objects: (json['objects'] as List<dynamic>)
              .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
              .toList(),
          relatedObjects: (json['related_objects'] as List<dynamic>)
              .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
              .toList(),
          errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$BatchRetrieveCatalogObjectsResponseToJson(
    BatchRetrieveCatalogObjectsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  val['objects'] = instance.objects.map((e) => e.toJson()).toList();
  val['related_objects'] =
      instance.relatedObjects.map((e) => e.toJson()).toList();
  return val;
}
