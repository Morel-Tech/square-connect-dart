// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      id: json['id'] as String?,
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      bin: json['bin'] as String?,
      cardBrand: _$enumDecodeNullable(_$CardBrandEnumMap, json['card_brand']),
      cardType: _$enumDecodeNullable(_$CardTypeEnumMap, json['card_type']),
      cardholderName: json['cardholder_name'] as String?,
      customerId: json['customer_id'] as String?,
      enabled: json['enabled'] as bool?,
      expMonth: json['exp_month'] as int?,
      expYear: json['exp_year'] as int?,
      fingerprint: json['fingerprint'] as String?,
      last_4: json['last_4'] as String?,
      prepaidType:
          _$enumDecodeNullable(_$CardPrepaidTypeEnumMap, json['prepaid_type']),
      referenceId: json['reference_id'] as String?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'id': instance.id,
      'billing_address': instance.billingAddress?.toJson(),
      'bin': instance.bin,
      'card_brand': _$CardBrandEnumMap[instance.cardBrand],
      'card_type': _$CardTypeEnumMap[instance.cardType],
      'cardholder_name': instance.cardholderName,
      'customer_id': instance.customerId,
      'enabled': instance.enabled,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
      'fingerprint': instance.fingerprint,
      'last_4': instance.last_4,
      'prepaid_type': _$CardPrepaidTypeEnumMap[instance.prepaidType],
      'reference_id': instance.referenceId,
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

const _$CardTypeEnumMap = {
  CardType.unknownCardType: 'UNKNOWN_CARD_TYPE',
  CardType.credit: 'CREDIT',
  CardType.debit: 'DEBIT',
};

const _$CardPrepaidTypeEnumMap = {
  CardPrepaidType.unknownPrepaidType: 'UNKNOWN_PREPAID_TYPE',
  CardPrepaidType.notPrepaid: 'NOT_PREPAID',
  CardPrepaidType.prepaid: 'PREPAID',
};
