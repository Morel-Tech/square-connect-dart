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
      cardBrand: $enumDecodeNullable(_$CardBrandEnumMap, json['card_brand']),
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['card_type']),
      cardholderName: json['cardholder_name'] as String?,
      customerId: json['customer_id'] as String?,
      enabled: json['enabled'] as bool?,
      expMonth: json['exp_month'] as int?,
      expYear: json['exp_year'] as int?,
      fingerprint: json['fingerprint'] as String?,
      last_4: json['last_4'] as String?,
      prepaidType:
          $enumDecodeNullable(_$CardPrepaidTypeEnumMap, json['prepaid_type']),
      referenceId: json['reference_id'] as String?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$CardToJson(Card instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('bin', instance.bin);
  writeNotNull('card_brand', _$CardBrandEnumMap[instance.cardBrand]);
  writeNotNull('card_type', _$CardTypeEnumMap[instance.cardType]);
  writeNotNull('cardholder_name', instance.cardholderName);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('exp_month', instance.expMonth);
  writeNotNull('exp_year', instance.expYear);
  writeNotNull('fingerprint', instance.fingerprint);
  writeNotNull('last_4', instance.last_4);
  writeNotNull('prepaid_type', _$CardPrepaidTypeEnumMap[instance.prepaidType]);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('version', instance.version);
  return val;
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
