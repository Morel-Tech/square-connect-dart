// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_catalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCatalogResponse _$ListCatalogResponseFromJson(Map<String, dynamic> json) =>
    ListCatalogResponse(
      cursor: json['cursor'] as String?,
      objects: (json['objects'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListCatalogResponseToJson(ListCatalogResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  writeNotNull('objects', instance.objects?.map((e) => e.toJson()).toList());
  return val;
}
