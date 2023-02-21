// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItemOption _$CatalogItemOptionFromJson(Map<String, dynamic> json) =>
    CatalogItemOption(
      description: json['description'] as String?,
      displayName: json['display_name'] as String?,
      name: json['name'] as String?,
      showColors: json['show_colors'] as bool?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogItemOptionToJson(CatalogItemOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('name', instance.name);
  writeNotNull('show_colors', instance.showColors);
  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  return val;
}
