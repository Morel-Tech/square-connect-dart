// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      addressLine1: json['address_line1'] as String?,
      addressLine2: json['address_line2'] as String?,
      addressLine3: json['address_line3'] as String?,
      administrativeDistrictLevel1:
          json['administrative_district_level1'] as String?,
      administrativeDistrictLevel2:
          json['administrative_district_level2'] as String?,
      administrativeDistrictLevel3:
          json['administrative_district_level3'] as String?,
      country: _$enumDecodeNullable(_$CountryEnumMap, json['country'],
          unknownValue: Country.unknown),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      locality: json['locality'] as String?,
      organization: json['organization'] as String?,
      postalCode: json['postal_code'] as String?,
      sublocality: json['sublocality'] as String?,
      sublocality2: json['sublocality2'] as String?,
      sublocality3: json['sublocality3'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'address_line1': instance.addressLine1,
      'address_line2': instance.addressLine2,
      'address_line3': instance.addressLine3,
      'administrative_district_level1': instance.administrativeDistrictLevel1,
      'administrative_district_level2': instance.administrativeDistrictLevel2,
      'administrative_district_level3': instance.administrativeDistrictLevel3,
      'country': _$CountryEnumMap[instance.country],
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'locality': instance.locality,
      'organization': instance.organization,
      'postal_code': instance.postalCode,
      'sublocality': instance.sublocality,
      'sublocality2': instance.sublocality2,
      'sublocality3': instance.sublocality3,
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$CountryEnumMap = {
  Country.unknown: 'ZZ',
  Country.unitedStatesOfAmerica: 'US',
  Country.spain: 'ES',
  Country.france: 'FR',
  Country.unitedKingdom: 'GB',
  Country.canada: 'CA',
  Country.mexico: 'MX',
  Country.germany: 'DE',
  Country.china: 'CN',
};
