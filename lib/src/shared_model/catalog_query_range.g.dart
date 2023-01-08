// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQueryRange _$CatalogQueryRangeFromJson(Map<String, dynamic> json) =>
    CatalogQueryRange(
      attributeName: json['attribute_name'] as String,
      attributeMaxValue: json['attribute_max_value'] as int?,
      attributeMinValue: json['attribute_min_value'] as int?,
    );

Map<String, dynamic> _$CatalogQueryRangeToJson(CatalogQueryRange instance) {
  final val = <String, dynamic>{
    'attribute_name': instance.attributeName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attribute_max_value', instance.attributeMaxValue);
  writeNotNull('attribute_min_value', instance.attributeMinValue);
  return val;
}
