// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_adjust_increment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityAdjustIncrement _$GiftCardActivityAdjustIncrementFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityAdjustIncrement(
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$GiftCardActivityAdjustIncrementToJson(
        GiftCardActivityAdjustIncrement instance) =>
    <String, dynamic>{
      'amount_money': instance.amountMoney.toJson(),
      'reason': instance.reason,
    };
