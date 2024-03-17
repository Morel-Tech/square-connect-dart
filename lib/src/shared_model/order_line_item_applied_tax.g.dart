// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item_applied_tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItemAppliedTax _$OrderLineItemAppliedTaxFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemAppliedTax(
      taxUid: json['tax_uid'] as String,
      uid: json['uid'] as String?,
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemAppliedTaxToJson(
    OrderLineItemAppliedTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  val['tax_uid'] = instance.taxUid;
  writeNotNull('applied_money', instance.appliedMoney?.toJson());
  return val;
}
