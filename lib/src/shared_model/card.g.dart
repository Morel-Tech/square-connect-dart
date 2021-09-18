// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      id: json['id'] as String?,
      billingAddress: json['billingAddress'] == null
          ? null
          : Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      bin: json['bin'] as String?,
      cardBrand: _$enumDecodeNullable(_$CardBrandEnumMap, json['cardBrand']),
      cardType: _$enumDecodeNullable(_$CardBrandEnumMap, json['cardType']),
      cardholderName: json['cardholderName'] as String?,
      customerId: json['customerId'] as String?,
      enabled: json['enabled'] as bool?,
      expMonth: json['expMonth'] as int?,
      expYear: json['expYear'] as int?,
      fingerprint: json['fingerprint'] as String?,
      last_4: json['last_4'] as String?,
      prepaidType:
          _$enumDecodeNullable(_$CardPrepaidTypeEnumMap, json['prepaidType']),
      referenceId: json['referenceId'] as String?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'id': instance.id,
      'billingAddress': instance.billingAddress,
      'bin': instance.bin,
      'cardBrand': _$CardBrandEnumMap[instance.cardBrand],
      'cardType': _$CardBrandEnumMap[instance.cardType],
      'cardholderName': instance.cardholderName,
      'customerId': instance.customerId,
      'enabled': instance.enabled,
      'expMonth': instance.expMonth,
      'expYear': instance.expYear,
      'fingerprint': instance.fingerprint,
      'last_4': instance.last_4,
      'prepaidType': _$CardPrepaidTypeEnumMap[instance.prepaidType],
      'referenceId': instance.referenceId,
      'version': instance.version,
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

const _$CardBrandEnumMap = {
  CardBrand.otherBrand: 'OTHER_BRAND',
  CardBrand.visa: 'VISA',
  CardBrand.mastercard: 'MASTERCARD',
  CardBrand.americanExpress: 'AMERICAN_EXPRESS',
  CardBrand.discover: 'DISCOVER',
  CardBrand.discoverDiners: 'DISCOVER_DINERS',
  CardBrand.jcb: 'JCB',
  CardBrand.chinaUnionpay: 'CHINA_UNIONPAY',
  CardBrand.squareGiftCard: 'SQUARE_GIFT_CARD',
  CardBrand.squareCapitalCard: 'SQUARE_CAPITAL_CARD',
  CardBrand.interac: 'INTERAC',
  CardBrand.eftpos: 'EFTPOS',
  CardBrand.felica: 'FELICA',
  CardBrand.ebt: 'EBT',
};

const _$CardPrepaidTypeEnumMap = {
  CardPrepaidType.unknownPrepaidType: 'UNKNOWN_PREPAID_TYPE',
  CardPrepaidType.notPrepaid: 'NOT_PREPAID',
  CardPrepaidType.prepaid: 'PREPAID',
};
