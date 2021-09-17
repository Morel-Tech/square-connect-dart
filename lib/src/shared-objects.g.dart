// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tender _$TenderFromJson(Map<String, dynamic> json) => Tender(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      transactionId: json['transactionId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      note: json['note'] as String,
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      tipMoney: Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      processingFeeMoney:
          Money.fromJson(json['processingFeeMoney'] as Map<String, dynamic>),
      customerId: json['customerId'] as String,
      cardDetails: TenderCardDetails.fromJson(
          json['cardDetails'] as Map<String, dynamic>),
      cashDetails: TenderCashDetails.fromJson(
          json['cashDetails'] as Map<String, dynamic>),
      additionalRecipients: (json['additionalRecipients'] as List<dynamic>)
          .map((e) => AdditionalRecipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: _$enumDecode(_$TenderTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$TenderToJson(Tender instance) => <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'transactionId': instance.transactionId,
      'createdAt': instance.createdAt.toIso8601String(),
      'note': instance.note,
      'amountMoney': instance.amountMoney,
      'tipMoney': instance.tipMoney,
      'processingFeeMoney': instance.processingFeeMoney,
      'customerId': instance.customerId,
      'cardDetails': instance.cardDetails,
      'cashDetails': instance.cashDetails,
      'additionalRecipients': instance.additionalRecipients,
      'type': _$TenderTypeEnumMap[instance.type],
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

const _$TenderTypeEnumMap = {
  TenderType.card: 'CARD',
  TenderType.cash: 'CASH',
  TenderType.thirdPartyCard: 'THIRD_PARTY_CARD',
  TenderType.squareGiftCard: 'SQUARE_GIFT_CARD',
  TenderType.noSale: 'NO_SALE',
  TenderType.other: 'OTHER',
};

TenderCardDetails _$TenderCardDetailsFromJson(Map<String, dynamic> json) =>
    TenderCardDetails(
      status: _$enumDecode(_$TenderCardDetailsStatusEnumMap, json['status']),
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
      entryMethod: _$enumDecode(
          _$TenderCardDetailsEntryMethodEnumMap, json['entryMethod']),
    );

Map<String, dynamic> _$TenderCardDetailsToJson(TenderCardDetails instance) =>
    <String, dynamic>{
      'status': _$TenderCardDetailsStatusEnumMap[instance.status],
      'card': instance.card,
      'entryMethod':
          _$TenderCardDetailsEntryMethodEnumMap[instance.entryMethod],
    };

const _$TenderCardDetailsStatusEnumMap = {
  TenderCardDetailsStatus.authorized: 'AUTHORIZED',
  TenderCardDetailsStatus.captured: 'CAPTURED',
  TenderCardDetailsStatus.voided: 'VOIDED',
  TenderCardDetailsStatus.failed: 'FAILED',
};

const _$TenderCardDetailsEntryMethodEnumMap = {
  TenderCardDetailsEntryMethod.swiped: 'SWIPED',
  TenderCardDetailsEntryMethod.keyed: 'KEYED',
  TenderCardDetailsEntryMethod.emv: 'EMV',
  TenderCardDetailsEntryMethod.onFile: 'ON_FILE',
  TenderCardDetailsEntryMethod.contactless: 'CONTACTLESS',
};

TenderCashDetails _$TenderCashDetailsFromJson(Map<String, dynamic> json) =>
    TenderCashDetails(
      buyerTenderedMoney:
          Money.fromJson(json['buyerTenderedMoney'] as Map<String, dynamic>),
      changeBackMoney:
          Money.fromJson(json['changeBackMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenderCashDetailsToJson(TenderCashDetails instance) =>
    <String, dynamic>{
      'buyerTenderedMoney': instance.buyerTenderedMoney,
      'changeBackMoney': instance.changeBackMoney,
    };

AdditionalRecipient _$AdditionalRecipientFromJson(Map<String, dynamic> json) =>
    AdditionalRecipient(
      locationId: json['locationId'] as String,
      description: json['description'] as String,
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      receivableId: json['receivableId'] as String,
    );

Map<String, dynamic> _$AdditionalRecipientToJson(
        AdditionalRecipient instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'description': instance.description,
      'amountMoney': instance.amountMoney,
      'receivableId': instance.receivableId,
    };

TimeRange _$TimeRangeFromJson(Map<String, dynamic> json) => TimeRange(
      startAt: DateTime.parse(json['startAt'] as String),
      endAt: DateTime.parse(json['endAt'] as String),
    );

Map<String, dynamic> _$TimeRangeToJson(TimeRange instance) => <String, dynamic>{
      'startAt': instance.startAt.toIso8601String(),
      'endAt': instance.endAt.toIso8601String(),
    };

DateRange _$DateRangeFromJson(Map<String, dynamic> json) => DateRange(
      startDate: SquareDate.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: SquareDate.fromJson(json['endDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateRangeToJson(DateRange instance) => <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

SquareDate _$SquareDateFromJson(Map<String, dynamic> json) => SquareDate(
      year: json['year'] as int,
      month: json['month'] as int,
      day: json['day'] as int,
    );

Map<String, dynamic> _$SquareDateToJson(SquareDate instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };
