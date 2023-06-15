// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_modifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogModifier _$CatalogModifierFromJson(Map<String, dynamic> json) =>
    CatalogModifier(
      name: json['name'] as String?,
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
      ordinal: json['ordinal'] as int?,
      modifierListId: json['modifier_list_id'] as String?,
      imageId: json['image_id'] as String?,
      locationOverrides: (json['location_overrides'] as List<dynamic>?)
          ?.map((e) =>
              ModifierLocationOverrides.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogModifierToJson(CatalogModifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('price_money', instance.priceMoney?.toJson());
  writeNotNull('ordinal', instance.ordinal);
  writeNotNull('modifier_list_id', instance.modifierListId);
  writeNotNull('image_id', instance.imageId);
  writeNotNull('location_overrides',
      instance.locationOverrides?.map((e) => e.toJson()).toList());
  return val;
}
