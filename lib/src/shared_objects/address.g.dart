// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      addressLine3: json['addressLine3'] as String?,
      administrativeDistrictLevel1:
          json['administrativeDistrictLevel1'] as String?,
      administrativeDistrictLevel2:
          json['administrativeDistrictLevel2'] as String?,
      administrativeDistrictLevel3:
          json['administrativeDistrictLevel3'] as String?,
      country: _$enumDecodeNullable(_$CountryEnumMap, json['country'],
          unknownValue: Country.unknown),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      locality: json['locality'] as String?,
      organization: json['organization'] as String?,
      postalCode: json['postalCode'] as String?,
      sublocality: json['sublocality'] as String?,
      sublocality2: json['sublocality2'] as String?,
      sublocality3: json['sublocality3'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'addressLine3': instance.addressLine3,
      'administrativeDistrictLevel1': instance.administrativeDistrictLevel1,
      'administrativeDistrictLevel2': instance.administrativeDistrictLevel2,
      'administrativeDistrictLevel3': instance.administrativeDistrictLevel3,
      'country': _$CountryEnumMap[instance.country],
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'locality': instance.locality,
      'organization': instance.organization,
      'postalCode': instance.postalCode,
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
