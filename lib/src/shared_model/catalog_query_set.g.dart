// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQuerySet _$CatalogQuerySetFromJson(Map<String, dynamic> json) =>
    CatalogQuerySet(
      attributeName: json['attribute_name'] as String,
      attributeValues: json['attribute_values'] as String,
    );

Map<String, dynamic> _$CatalogQuerySetToJson(CatalogQuerySet instance) =>
    <String, dynamic>{
      'attribute_name': instance.attributeName,
      'attribute_values': instance.attributeValues,
    };
