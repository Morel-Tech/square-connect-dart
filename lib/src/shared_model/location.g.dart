// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      id: json['id'] as String,
      status: $enumDecode(_$LocationStatusEnumMap, json['status']),
      merchantId: json['merchant_id'] as String?,
      type: $enumDecode(_$LocationTypeEnumMap, json['type']),
      name: json['name'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      timezone: json['timezone'] as String?,
      capabilities: (json['capabilities'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$LocationCapabilityEnumMap, e))
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      country: json['country'] as String?,
      languageCode: json['language_code'] as String?,
      currency: json['currency'] as String?,
      phoneNumber: json['phone_number'] as String?,
      businessName: json['business_name'] as String?,
      websiteUrl: json['website_url'] as String?,
      businessHours: json['business_hours'] == null
          ? null
          : BusinessHours.fromJson(
              json['business_hours'] as Map<String, dynamic>),
      businessEmail: json['business_email'] as String?,
      description: json['description'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      instagramUsername: json['instagram_username'] as String?,
      facebookUrl: json['facebook_url'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationToJson(Location instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('timezone', instance.timezone);
  writeNotNull(
      'capabilities',
      instance.capabilities
          ?.map((e) => _$LocationCapabilityEnumMap[e]!)
          .toList());
  val['status'] = _$LocationStatusEnumMap[instance.status]!;
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('merchant_id', instance.merchantId);
  writeNotNull('country', instance.country);
  writeNotNull('language_code', instance.languageCode);
  writeNotNull('currency', instance.currency);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('business_name', instance.businessName);
  val['type'] = _$LocationTypeEnumMap[instance.type]!;
  writeNotNull('website_url', instance.websiteUrl);
  writeNotNull('business_hours', instance.businessHours?.toJson());
  writeNotNull('business_email', instance.businessEmail);
  writeNotNull('description', instance.description);
  writeNotNull('twitter_username', instance.twitterUsername);
  writeNotNull('instagram_username', instance.instagramUsername);
  writeNotNull('facebook_url', instance.facebookUrl);
  writeNotNull('coordinates', instance.coordinates?.toJson());
  return val;
}

const _$LocationStatusEnumMap = {
  LocationStatus.active: 'ACTIVE',
  LocationStatus.inactive: 'INACTIVE',
};

const _$LocationTypeEnumMap = {
  LocationType.physical: 'PHYSICAL',
  LocationType.mobile: 'MOBILE',
};

const _$LocationCapabilityEnumMap = {
  LocationCapability.creditCardProcessing: 'CREDIT_CARD_PROCESSING',
  LocationCapability.automaticTransfers: 'AUTOMATIC_TRANSFERS',
};
