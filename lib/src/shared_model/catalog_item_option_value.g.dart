// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_option_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItemOptionValue _$CatalogItemOptionValueFromJson(
        Map<String, dynamic> json) =>
    CatalogItemOptionValue(
      color: json['color'] as String?,
      description: json['description'] as String?,
      itemOptionId: json['item_option_id'] as String?,
      name: json['name'] as String?,
      ordinal: json['ordinal'] as int?,
    );

Map<String, dynamic> _$CatalogItemOptionValueToJson(
    CatalogItemOptionValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', instance.color);
  writeNotNull('description', instance.description);
  writeNotNull('item_option_id', instance.itemOptionId);
  writeNotNull('name', instance.name);
  writeNotNull('ordinal', instance.ordinal);
  return val;
}
