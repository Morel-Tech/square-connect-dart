// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tender _$TenderFromJson(Map<String, dynamic> json) => Tender(
      id: json['id'] as String,
      locationId: json['location_id'] as String,
      transactionId: json['transaction_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      note: json['note'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      tipMoney: Money.fromJson(json['tip_money'] as Map<String, dynamic>),
      processingFeeMoney:
          Money.fromJson(json['processing_fee_money'] as Map<String, dynamic>),
      customerId: json['customer_id'] as String,
      cardDetails: TenderCardDetails.fromJson(
          json['card_details'] as Map<String, dynamic>),
      cashDetails: TenderCashDetails.fromJson(
          json['cash_details'] as Map<String, dynamic>),
      additionalRecipients: (json['additional_recipients'] as List<dynamic>)
          .map((e) => AdditionalRecipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: _$enumDecode(_$TenderTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$TenderToJson(Tender instance) => <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'transaction_id': instance.transactionId,
      'created_at': instance.createdAt.toIso8601String(),
      'note': instance.note,
      'amount_money': instance.amountMoney.toJson(),
      'tip_money': instance.tipMoney.toJson(),
      'processing_fee_money': instance.processingFeeMoney.toJson(),
      'customer_id': instance.customerId,
      'card_details': instance.cardDetails.toJson(),
      'cash_details': instance.cashDetails.toJson(),
      'additional_recipients':
          instance.additionalRecipients.map((e) => e.toJson()).toList(),
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
          _$TenderCardDetailsEntryMethodEnumMap, json['entry_method']),
    );

Map<String, dynamic> _$TenderCardDetailsToJson(TenderCardDetails instance) =>
    <String, dynamic>{
      'status': _$TenderCardDetailsStatusEnumMap[instance.status],
      'card': instance.card.toJson(),
      'entry_method':
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
          Money.fromJson(json['buyer_tendered_money'] as Map<String, dynamic>),
      changeBackMoney:
          Money.fromJson(json['change_back_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenderCashDetailsToJson(TenderCashDetails instance) =>
    <String, dynamic>{
      'buyer_tendered_money': instance.buyerTenderedMoney.toJson(),
      'change_back_money': instance.changeBackMoney.toJson(),
    };

AdditionalRecipient _$AdditionalRecipientFromJson(Map<String, dynamic> json) =>
    AdditionalRecipient(
      locationId: json['location_id'] as String,
      description: json['description'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      receivableId: json['receivable_id'] as String,
    );

Map<String, dynamic> _$AdditionalRecipientToJson(
        AdditionalRecipient instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'description': instance.description,
      'amount_money': instance.amountMoney.toJson(),
      'receivable_id': instance.receivableId,
    };

TimeRange _$TimeRangeFromJson(Map<String, dynamic> json) => TimeRange(
      startAt: DateTime.parse(json['start_at'] as String),
      endAt: DateTime.parse(json['end_at'] as String),
    );

Map<String, dynamic> _$TimeRangeToJson(TimeRange instance) => <String, dynamic>{
      'start_at': instance.startAt.toIso8601String(),
      'end_at': instance.endAt.toIso8601String(),
    };

DateRange _$DateRangeFromJson(Map<String, dynamic> json) => DateRange(
      startDate:
          SquareDate.fromJson(json['start_date'] as Map<String, dynamic>),
      endDate: SquareDate.fromJson(json['end_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateRangeToJson(DateRange instance) => <String, dynamic>{
      'start_date': instance.startDate.toJson(),
      'end_date': instance.endDate.toJson(),
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
