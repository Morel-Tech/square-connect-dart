// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_money_amounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderMoneyAmounts _$OrderMoneyAmountsFromJson(Map<String, dynamic> json) =>
    OrderMoneyAmounts(
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      taxMoney: json['tax_money'] == null
          ? null
          : Money.fromJson(json['tax_money'] as Map<String, dynamic>),
      discountMoney: json['discount_money'] == null
          ? null
          : Money.fromJson(json['discount_money'] as Map<String, dynamic>),
      tipMoney: json['tip_money'] == null
          ? null
          : Money.fromJson(json['tip_money'] as Map<String, dynamic>),
      serviceChargeMoney: json['service_charge_money'] == null
          ? null
          : Money.fromJson(
              json['service_charge_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderMoneyAmountsToJson(OrderMoneyAmounts instance) =>
    <String, dynamic>{
      'total_money': instance.totalMoney?.toJson(),
      'tax_money': instance.taxMoney?.toJson(),
      'discount_money': instance.discountMoney?.toJson(),
      'tip_money': instance.tipMoney?.toJson(),
      'service_charge_money': instance.serviceChargeMoney?.toJson(),
    };
