// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_catalog_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCatalogObjectResponse _$RetrieveCatalogObjectResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveCatalogObjectResponse(
      object: CatalogObject.fromJson(json['object'] as Map<String, dynamic>),
      relatedObjects: (json['related_objects'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveCatalogObjectResponseToJson(
    RetrieveCatalogObjectResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  val['object'] = instance.object.toJson();
  val['related_objects'] =
      instance.relatedObjects.map((e) => e.toJson()).toList();
  return val;
}
