// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item_applied_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItemAppliedDiscount _$OrderLineItemAppliedDiscountFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemAppliedDiscount(
      discountUid: json['discount_uid'] as String,
      uid: json['uid'] as String?,
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemAppliedDiscountToJson(
    OrderLineItemAppliedDiscount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  val['discount_uid'] = instance.discountUid;
  writeNotNull('applied_money', instance.appliedMoney?.toJson());
  return val;
}
