// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_rounding_adjustment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRoundingAdjustment _$OrderRoundingAdjustmentFromJson(
        Map<String, dynamic> json) =>
    OrderRoundingAdjustment(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderRoundingAdjustmentToJson(
        OrderRoundingAdjustment instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'amount_money': instance.amountMoney?.toJson(),
    };
