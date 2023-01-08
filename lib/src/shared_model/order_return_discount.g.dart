// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReturnDiscount _$OrderReturnDiscountFromJson(Map<String, dynamic> json) =>
    OrderReturnDiscount(
      id: json['id'] as String?,
      sourceDiscountId: json['source_discount_id'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      name: json['name'] as String?,
      type:
          $enumDecodeNullable(_$OrderLineItemDiscountTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num?)?.toDouble(),
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      scope: $enumDecodeNullable(
          _$OrderLineItemDiscountScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderReturnDiscountToJson(OrderReturnDiscount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('source_discount_id', instance.sourceDiscountId);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$OrderLineItemDiscountTypeEnumMap[instance.type]);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('amount_money', instance.amountMoney?.toJson());
  writeNotNull('applied_money', instance.appliedMoney?.toJson());
  writeNotNull('scope', _$OrderLineItemDiscountScopeEnumMap[instance.scope]);
  return val;
}

const _$OrderLineItemDiscountTypeEnumMap = {
  OrderLineItemDiscountType.unknownDiscount: 'UNKNOWN_DISCOUNT',
  OrderLineItemDiscountType.fixedPercentage: 'FIXED_PERCENTAGE',
  OrderLineItemDiscountType.fixedAmount: 'FIXED_AMOUNT',
  OrderLineItemDiscountType.variablePercentage: 'VARIABLE_PERCENTAGE',
  OrderLineItemDiscountType.variableAmount: 'VARIABLE_AMOUNT',
};

const _$OrderLineItemDiscountScopeEnumMap = {
  OrderLineItemDiscountScope.otherDiscountScope: 'OTHER_DISCOUNT_SCOPE',
  OrderLineItemDiscountScope.lineItem: 'LINE_ITEM',
  OrderLineItemDiscountScope.order: 'ORDER',
};
