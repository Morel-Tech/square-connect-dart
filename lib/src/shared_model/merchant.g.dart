// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Merchant _$MerchantFromJson(Map<String, dynamic> json) => Merchant(
      id: json['id'] as String?,
      country: json['country'] as String,
      businessName: json['business_name'] as String?,
      currency: json['currency'] as String?,
      languageCode: json['language_code'] as String?,
      mainLocationId: json['main_location_id'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$MerchantToJson(Merchant instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['country'] = instance.country;
  writeNotNull('business_name', instance.businessName);
  writeNotNull('currency', instance.currency);
  writeNotNull('language_code', instance.languageCode);
  writeNotNull('main_location_id', instance.mainLocationId);
  writeNotNull('status', instance.status);
  return val;
}
