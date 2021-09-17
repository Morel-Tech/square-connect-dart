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
          ?.map((e) => _$enumDecode(_$LocationCapabilityEnumMap, e))
          .toList(),
      locationStatus:
          _$enumDecode(_$LocationStatusEnumMap, json['locationStatus']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      merchantId: json['merchantId'] as String,
      country: json['country'] as String,
      languageCode: json['languageCode'] as String,
      currency: json['currency'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      businessName: json['businessName'] as String?,
      type: _$enumDecode(_$LocationTypeEnumMap, json['type']),
      websiteUrl: json['websiteUrl'] as String?,
      businessHours: json['businessHours'] == null
          ? null
          : BusinessHours.fromJson(
              json['businessHours'] as Map<String, dynamic>),
      businessEmail: json['businessEmail'] as String?,
      description: json['description'] as String?,
      twitterUsername: json['twitterUsername'] as String?,
      instagramUsername: json['instagramUsername'] as String?,
      facebookUrl: json['facebookUrl'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'timezone': instance.timezone,
      'capabilities': instance.capabilities
          ?.map((e) => _$LocationCapabilityEnumMap[e])
          .toList(),
      'locationStatus': _$LocationStatusEnumMap[instance.locationStatus],
      'createdAt': instance.createdAt?.toIso8601String(),
      'merchantId': instance.merchantId,
      'country': instance.country,
      'languageCode': instance.languageCode,
      'currency': instance.currency,
      'phoneNumber': instance.phoneNumber,
      'businessName': instance.businessName,
      'type': _$LocationTypeEnumMap[instance.type],
      'websiteUrl': instance.websiteUrl,
      'businessHours': instance.businessHours,
      'businessEmail': instance.businessEmail,
      'description': instance.description,
      'twitterUsername': instance.twitterUsername,
      'instagramUsername': instance.instagramUsername,
      'facebookUrl': instance.facebookUrl,
      'coordinates': instance.coordinates,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

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
