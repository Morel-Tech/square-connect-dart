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

Map<String, dynamic> _$OrderReturnDiscountToJson(
        OrderReturnDiscount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_discount_id': instance.sourceDiscountId,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemDiscountTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'amount_money': instance.amountMoney?.toJson(),
      'applied_money': instance.appliedMoney?.toJson(),
      'scope': _$OrderLineItemDiscountScopeEnumMap[instance.scope],
    };

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
