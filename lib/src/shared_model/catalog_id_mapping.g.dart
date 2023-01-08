// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_id_mapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogIdMapping _$CatalogIdMappingFromJson(Map<String, dynamic> json) =>
    CatalogIdMapping(
      clientObjectId: json['client_object_id'] as String?,
      objectId: json['object_id'] as String?,
    );

Map<String, dynamic> _$CatalogIdMappingToJson(CatalogIdMapping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('client_object_id', instance.clientObjectId);
  writeNotNull('object_id', instance.objectId);
  return val;
}
