// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_object_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogObjectReference _$CatalogObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    CatalogObjectReference(
      catalogVersion: json['catalog_version'] as int?,
      objectId: json['object_id'] as String?,
    );

Map<String, dynamic> _$CatalogObjectReferenceToJson(
        CatalogObjectReference instance) =>
    <String, dynamic>{
      'catalog_version': instance.catalogVersion,
      'object_id': instance.objectId,
    };
