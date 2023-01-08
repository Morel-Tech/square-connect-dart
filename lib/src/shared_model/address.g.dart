// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      addressLine1: json['address_line_1'] as String?,
      addressLine2: json['address_line_2'] as String?,
      addressLine3: json['address_line_3'] as String?,
      administrativeDistrictLevel1:
          json['administrative_district_level_1'] as String?,
      administrativeDistrictLevel2:
          json['administrative_district_level_2'] as String?,
      administrativeDistrictLevel3:
          json['administrative_district_level_3'] as String?,
      country: $enumDecodeNullable(_$CountryEnumMap, json['country'],
          unknownValue: Country.unknown),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      locality: json['locality'] as String?,
      organization: json['organization'] as String?,
      postalCode: json['postal_code'] as String?,
      sublocality: json['sublocality'] as String?,
      sublocality2: json['sublocality_2'] as String?,
      sublocality3: json['sublocality_3'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_line_1', instance.addressLine1);
  writeNotNull('address_line_2', instance.addressLine2);
  writeNotNull('address_line_3', instance.addressLine3);
  writeNotNull(
      'administrative_district_level_1', instance.administrativeDistrictLevel1);
  writeNotNull(
      'administrative_district_level_2', instance.administrativeDistrictLevel2);
  writeNotNull(
      'administrative_district_level_3', instance.administrativeDistrictLevel3);
  writeNotNull('country', _$CountryEnumMap[instance.country]);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('locality', instance.locality);
  writeNotNull('organization', instance.organization);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('sublocality', instance.sublocality);
  writeNotNull('sublocality_2', instance.sublocality2);
  writeNotNull('sublocality_3', instance.sublocality3);
  return val;
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
