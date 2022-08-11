// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_pay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickPay _$QuickPayFromJson(Map<String, dynamic> json) => QuickPay(
      locationId: json['location_id'] as String,
      name: json['name'] as String,
      priceMoney: Money.fromJson(json['price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuickPayToJson(QuickPay instance) => <String, dynamic>{
      'location_id': instance.locationId,
      'name': instance.name,
      'price_money': instance.priceMoney.toJson(),
    };
