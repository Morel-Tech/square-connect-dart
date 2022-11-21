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
        BatchRetrieveCatalogObjectsRequest instance) =>
    <String, dynamic>{
      'object_ids': instance.objectIds,
      'include_related_objects': instance.includeRelatedObjects,
      'catalog_version': instance.catalogVersion,
      'include_deleted_objects': instance.includeDeletedObjects,
    };

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
        BatchRetrieveCatalogObjectsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'objects': instance.objects.map((e) => e.toJson()).toList(),
      'related_objects':
          instance.relatedObjects.map((e) => e.toJson()).toList(),
    };
