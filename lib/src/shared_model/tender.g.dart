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

Map<String, dynamic> _$TenderToJson(Tender instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('note', instance.note);
  writeNotNull('amount_money', instance.amountMoney?.toJson());
  writeNotNull('tip_money', instance.tipMoney?.toJson());
  writeNotNull('processing_fee_money', instance.processingFeeMoney?.toJson());
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('card_details', instance.cardDetails?.toJson());
  writeNotNull('cash_details', instance.cashDetails?.toJson());
  writeNotNull('additional_recipients',
      instance.additionalRecipients?.map((e) => e.toJson()).toList());
  val['type'] = _$TenderTypeEnumMap[instance.type]!;
  return val;
}

const _$TenderTypeEnumMap = {
  TenderType.card: 'CARD',
  TenderType.cash: 'CASH',
  TenderType.thirdPartyCard: 'THIRD_PARTY_CARD',
  TenderType.squareGiftCard: 'SQUARE_GIFT_CARD',
  TenderType.noSale: 'NO_SALE',
  TenderType.other: 'OTHER',
};
