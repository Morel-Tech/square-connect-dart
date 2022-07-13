// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tender _$TenderFromJson(Map<String, dynamic> json) => Tender(
      id: json['id'] as String?,
      locationId: json['location_id'] as String?,
      transactionId: json['transaction_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      note: json['note'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      tipMoney: json['tip_money'] == null
          ? null
          : Money.fromJson(json['tip_money'] as Map<String, dynamic>),
      processingFeeMoney: json['processing_fee_money'] == null
          ? null
          : Money.fromJson(
              json['processing_fee_money'] as Map<String, dynamic>),
      customerId: json['customer_id'] as String?,
      cardDetails: json['card_details'] == null
          ? null
          : TenderCardDetails.fromJson(
              json['card_details'] as Map<String, dynamic>),
      cashDetails: json['cash_details'] == null
          ? null
          : TenderCashDetails.fromJson(
              json['cash_details'] as Map<String, dynamic>),
      additionalRecipients: (json['additional_recipients'] as List<dynamic>?)
          ?.map((e) => AdditionalRecipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$TenderTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$TenderToJson(Tender instance) => <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'transaction_id': instance.transactionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'note': instance.note,
      'amount_money': instance.amountMoney?.toJson(),
      'tip_money': instance.tipMoney?.toJson(),
      'processing_fee_money': instance.processingFeeMoney?.toJson(),
      'customer_id': instance.customerId,
      'card_details': instance.cardDetails?.toJson(),
      'cash_details': instance.cashDetails?.toJson(),
      'additional_recipients':
          instance.additionalRecipients?.map((e) => e.toJson()).toList(),
      'type': _$TenderTypeEnumMap[instance.type]!,
    };

const _$TenderTypeEnumMap = {
  TenderType.card: 'CARD',
  TenderType.cash: 'CASH',
  TenderType.thirdPartyCard: 'THIRD_PARTY_CARD',
  TenderType.squareGiftCard: 'SQUARE_GIFT_CARD',
  TenderType.noSale: 'NO_SALE',
  TenderType.other: 'OTHER',
};
