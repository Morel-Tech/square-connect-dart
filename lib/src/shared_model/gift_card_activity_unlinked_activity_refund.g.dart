// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_unlinked_activity_refund.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityUnlinkedActivityRefund
    _$GiftCardActivityUnlinkedActivityRefundFromJson(
            Map<String, dynamic> json) =>
        GiftCardActivityUnlinkedActivityRefund(
          amountMoney:
              Money.fromJson(json['amount_money'] as Map<String, dynamic>),
          paymentId: json['payment_id'] as String?,
          referenceId: json['reference_id'] as String?,
        );

Map<String, dynamic> _$GiftCardActivityUnlinkedActivityRefundToJson(
    GiftCardActivityUnlinkedActivityRefund instance) {
  final val = <String, dynamic>{
    'amount_money': instance.amountMoney.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('reference_id', instance.referenceId);
  return val;
}
