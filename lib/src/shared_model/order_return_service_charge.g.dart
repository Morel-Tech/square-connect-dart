// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_service_charge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReturnServiceCharge _$OrderReturnServiceChargeFromJson(
        Map<String, dynamic> json) =>
    OrderReturnServiceCharge(
      id: json['id'] as String?,
      sourceServiceChargeId: json['source_service_charge_id'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      name: json['name'] as String?,
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
      returnTaxes: (json['return_taxes'] as List<dynamic>?)
          ?.map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderReturnServiceChargeToJson(
    OrderReturnServiceCharge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('source_service_charge_id', instance.sourceServiceChargeId);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('amount_money', instance.amountMoney?.toJson());
  writeNotNull('applied_money', instance.appliedMoney?.toJson());
  writeNotNull('total_money', instance.totalMoney?.toJson());
  writeNotNull('total_tax_money', instance.totalTaxMoney?.toJson());
  writeNotNull('calculation_phase',
      _$OrderServiceChargeCalculationPhaseEnumMap[instance.calculationPhase]);
  writeNotNull('taxable', instance.taxable);
  writeNotNull(
      'return_taxes', instance.returnTaxes?.map((e) => e.toJson()).toList());
  return val;
}

const _$OrderServiceChargeCalculationPhaseEnumMap = {
  OrderServiceChargeCalculationPhase.subtotalPhase: 'SUBTOTAL_PHASE',
  OrderServiceChargeCalculationPhase.totalPhase: 'TOTAL_PHASE',
};
