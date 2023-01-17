// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_adjust_decrement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityAdjustDecrement _$GiftCardActivityAdjustDecrementFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityAdjustDecrement(
      money: Money.fromJson(json['money'] as Map<String, dynamic>),
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$GiftCardActivityAdjustDecrementToJson(
        GiftCardActivityAdjustDecrement instance) =>
    <String, dynamic>{
      'money': instance.money.toJson(),
      'reason': instance.reason,
    };
