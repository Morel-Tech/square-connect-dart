// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReturn _$OrderReturnFromJson(Map<String, dynamic> json) => OrderReturn(
      id: json['id'] as String?,
      sourceOrderId: json['source_order_id'] as String?,
      returnLineItems: (json['return_line_items'] as List<dynamic>?)
          ?.map((e) => OrderReturnLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnServiceCharges: (json['return_service_charges'] as List<dynamic>?)
          ?.map((e) =>
              OrderReturnServiceCharge.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnTaxes: (json['return_taxes'] as List<dynamic>?)
          ?.map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnDiscounts: (json['return_discounts'] as List<dynamic>?)
          ?.map((e) => OrderReturnDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundingAdjustment: json['rounding_adjustment'] == null
          ? null
          : OrderRoundingAdjustment.fromJson(
              json['rounding_adjustment'] as Map<String, dynamic>),
      returnAmounts: json['return_amounts'] == null
          ? null
          : OrderMoneyAmounts.fromJson(
              json['return_amounts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReturnToJson(OrderReturn instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('source_order_id', instance.sourceOrderId);
  writeNotNull('return_line_items',
      instance.returnLineItems?.map((e) => e.toJson()).toList());
  writeNotNull('return_service_charges',
      instance.returnServiceCharges?.map((e) => e.toJson()).toList());
  writeNotNull(
      'return_taxes', instance.returnTaxes?.map((e) => e.toJson()).toList());
  writeNotNull('return_discounts',
      instance.returnDiscounts?.map((e) => e.toJson()).toList());
  writeNotNull('rounding_adjustment', instance.roundingAdjustment?.toJson());
  writeNotNull('return_amounts', instance.returnAmounts?.toJson());
  return val;
}
