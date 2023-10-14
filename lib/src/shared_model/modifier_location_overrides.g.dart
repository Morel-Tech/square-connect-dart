// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_location_overrides.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierLocationOverrides _$ModifierLocationOverridesFromJson(
        Map<String, dynamic> json) =>
    ModifierLocationOverrides(
      locationId: json['location_id'] as String?,
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModifierLocationOverridesToJson(
    ModifierLocationOverrides instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('price_money', instance.priceMoney?.toJson());
  return val;
}
