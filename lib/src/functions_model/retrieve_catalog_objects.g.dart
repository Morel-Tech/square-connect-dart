// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_catalog_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCatalogObjectsResponse _$RetrieveCatalogObjectsResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveCatalogObjectsResponse(
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

Map<String, dynamic> _$RetrieveCatalogObjectsResponseToJson(
        RetrieveCatalogObjectsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'objects': instance.objects.map((e) => e.toJson()).toList(),
      'related_objects':
          instance.relatedObjects.map((e) => e.toJson()).toList(),
    };
