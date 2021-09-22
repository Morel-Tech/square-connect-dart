// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Merchant _$MerchantFromJson(Map<String, dynamic> json) => Merchant(
      id: json['id'] as String,
      country: json['country'] as String,
      businessName: json['business_name'] as String,
      currency: json['currency'] as String,
      languageCode: json['language_code'] as String,
      mainLocationId: json['main_location_id'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$MerchantToJson(Merchant instance) => <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'business_name': instance.businessName,
      'currency': instance.currency,
      'language_code': instance.languageCode,
      'main_location_id': instance.mainLocationId,
      'status': instance.status,
    };
