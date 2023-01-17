// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_load.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityLoad _$GiftCardActivityLoadFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityLoad(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      buyerPaymentInstrumentIds:
          (json['buyer_payment_instrument_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      lineItemUid: json['line_item_uid'] as String?,
      orderId: json['order_id'] as String?,
      referenceId: json['reference_id'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityLoadToJson(
    GiftCardActivityLoad instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney?.toJson());
  writeNotNull(
      'buyer_payment_instrument_ids', instance.buyerPaymentInstrumentIds);
  writeNotNull('line_item_uid', instance.lineItemUid);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('reference_id', instance.referenceId);
  return val;
}
