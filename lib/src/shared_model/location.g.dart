// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      id: json['id'] as String,
      name: json['name'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      timezone: json['timezone'] as String?,
      capabilities: (json['capabilities'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$LocationCapabilityEnumMap, e))
          .toList(),
      status: $enumDecode(_$LocationStatusEnumMap, json['status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      merchantId: json['merchant_id'] as String?,
      country: json['country'] as String?,
      languageCode: json['language_code'] as String?,
      currency: json['currency'] as String?,
      phoneNumber: json['phone_number'] as String?,
      businessName: json['business_name'] as String?,
      type: $enumDecode(_$LocationTypeEnumMap, json['type']),
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

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address?.toJson(),
      'timezone': instance.timezone,
      'capabilities': instance.capabilities
          ?.map((e) => _$LocationCapabilityEnumMap[e]!)
          .toList(),
      'status': _$LocationStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'merchant_id': instance.merchantId,
      'country': instance.country,
      'language_code': instance.languageCode,
      'currency': instance.currency,
      'phone_number': instance.phoneNumber,
      'business_name': instance.businessName,
      'type': _$LocationTypeEnumMap[instance.type]!,
      'website_url': instance.websiteUrl,
      'business_hours': instance.businessHours?.toJson(),
      'business_email': instance.businessEmail,
      'description': instance.description,
      'twitter_username': instance.twitterUsername,
      'instagram_username': instance.instagramUsername,
      'facebook_url': instance.facebookUrl,
      'coordinates': instance.coordinates?.toJson(),
    };

const _$LocationCapabilityEnumMap = {
  LocationCapability.creditCardProcessing: 'CREDIT_CARD_PROCESSING',
  LocationCapability.automaticTransfers: 'AUTOMATIC_TRANSFERS',
};

const _$LocationStatusEnumMap = {
  LocationStatus.active: 'ACTIVE',
  LocationStatus.inactive: 'INACTIVE',
};

const _$LocationTypeEnumMap = {
  LocationType.physical: 'PHYSICAL',
  LocationType.mobile: 'MOBILE',
};
