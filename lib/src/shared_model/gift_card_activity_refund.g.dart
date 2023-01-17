// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_refund.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityRefund _$GiftCardActivityRefundFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityRefund(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      paymentId: json['payment_id'] as String?,
      redeemActivityId: json['redeem_activity_id'] as String?,
      referenceId: json['reference_id'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityRefundToJson(
    GiftCardActivityRefund instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney?.toJson());
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('redeem_activity_id', instance.redeemActivityId);
  writeNotNull('reference_id', instance.referenceId);
  return val;
}
