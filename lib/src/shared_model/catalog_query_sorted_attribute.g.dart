// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query_sorted_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQuerySortedAttribute _$CatalogQuerySortedAttributeFromJson(
        Map<String, dynamic> json) =>
    CatalogQuerySortedAttribute(
      attributeName: json['attribute_name'] as String,
      initialAttributeValue: json['initial_attribute_value'] as String?,
      sortOrder: json['sort_order'] as String?,
    );

Map<String, dynamic> _$CatalogQuerySortedAttributeToJson(
        CatalogQuerySortedAttribute instance) =>
    <String, dynamic>{
      'attribute_name': instance.attributeName,
      'initial_attribute_value': instance.initialAttributeValue,
      'sort_order': instance.sortOrder,
    };
