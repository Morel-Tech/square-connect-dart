// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_location_overrides.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierLocationOverrides _$ModifierLocationOverridesFromJson(
        Map<String, dynamic> json) =>
    ModifierLocationOverrides(
      locationId: json['location_id'] as String,
      priceMoney: Money.fromJson(json['price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModifierLocationOverridesToJson(
        ModifierLocationOverrides instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'price_money': instance.priceMoney.toJson(),
    };
