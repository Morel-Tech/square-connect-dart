// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_service_charge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderServiceCharge _$OrderServiceChargeFromJson(Map<String, dynamic> json) =>
    OrderServiceCharge(
      uid: json['uid'] as String,
      name: json['name'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      percentage: json['percentage'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      totalTaxMoney: json['total_tax_money'] == null
          ? null
          : Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      calculationPhase: $enumDecodeNullable(
          _$OrderServiceChargeCalculationPhaseEnumMap,
          json['calculation_phase']),
      taxable: json['taxable'] as bool?,
      taxes: (json['taxes'] as List<dynamic>?)
          ?.map((e) => OrderLineItemTax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderServiceChargeToJson(OrderServiceCharge instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'catalog_object_id': instance.catalogObjectId,
      'percentage': instance.percentage,
      'amount_money': instance.amountMoney?.toJson(),
      'applied_money': instance.appliedMoney?.toJson(),
      'total_money': instance.totalMoney?.toJson(),
      'total_tax_money': instance.totalTaxMoney?.toJson(),
      'calculation_phase': _$OrderServiceChargeCalculationPhaseEnumMap[
          instance.calculationPhase],
      'taxable': instance.taxable,
      'taxes': instance.taxes?.map((e) => e.toJson()).toList(),
    };

const _$OrderServiceChargeCalculationPhaseEnumMap = {
  OrderServiceChargeCalculationPhase.subtotalPhase: 'SUBTOTAL_PHASE',
  OrderServiceChargeCalculationPhase.totalPhase: 'TOTAL_PHASE',
};
