// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_redeem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityRedeem _$GiftCardActivityRedeemFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityRedeem(
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      paymentId: json['payment_id'] as String?,
      referenceId: json['reference_id'] as String?,
      status: $enumDecodeNullable(
          _$GiftCardActivityRedeemStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$GiftCardActivityRedeemToJson(
    GiftCardActivityRedeem instance) {
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
  writeNotNull(
      'status', _$GiftCardActivityRedeemStatusEnumMap[instance.status]);
  return val;
}

const _$GiftCardActivityRedeemStatusEnumMap = {
  GiftCardActivityRedeemStatus.pending: 'PENDING',
  GiftCardActivityRedeemStatus.completed: 'COMPLETED',
  GiftCardActivityRedeemStatus.canceled: 'CANCELED',
};
