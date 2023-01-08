// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogImage _$CatalogImageFromJson(Map<String, dynamic> json) => CatalogImage(
      name: json['name'] as String?,
      url: json['url'] as String?,
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$CatalogImageToJson(CatalogImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('url', instance.url);
  writeNotNull('caption', instance.caption);
  return val;
}
