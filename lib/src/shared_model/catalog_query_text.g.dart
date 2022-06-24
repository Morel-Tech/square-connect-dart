// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQueryText _$CatalogQueryTextFromJson(Map<String, dynamic> json) =>
    CatalogQueryText(
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CatalogQueryTextToJson(CatalogQueryText instance) =>
    <String, dynamic>{
      'keywords': instance.keywords,
    };
