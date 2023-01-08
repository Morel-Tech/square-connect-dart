// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_pricing_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogPricingRule _$CatalogPricingRuleFromJson(Map<String, dynamic> json) =>
    CatalogPricingRule(
      customerGroupIdsAny: (json['customer_group_ids_any'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discountId: json['discount_id'] as String?,
      excludeProductsId: json['exclude_products_id'] as String?,
      excludeStrategy: json['exclude_strategy'] as String?,
      matchProductsId: json['match_products_id'] as String?,
      minimumOrderSubtotalMoney: json['minimum_order_subtotal_money'] == null
          ? null
          : Money.fromJson(
              json['minimum_order_subtotal_money'] as Map<String, dynamic>),
      name: json['name'] as String?,
      timePeriodIds: (json['time_period_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      validFromDate: json['valid_from_date'] as String?,
      validFromLocalTime: json['valid_from_local_time'] as String?,
      validUntilDate: json['valid_until_date'] as String?,
      validUntilLocalTime: json['valid_until_local_time'] as String?,
      discountTargetScope: $enumDecodeNullable(
          _$DiscountTargetScopeTypeEnumMap, json['discount_target_scope']),
    );

Map<String, dynamic> _$CatalogPricingRuleToJson(CatalogPricingRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_group_ids_any', instance.customerGroupIdsAny);
  writeNotNull('discount_id', instance.discountId);
  writeNotNull('exclude_products_id', instance.excludeProductsId);
  writeNotNull('exclude_strategy', instance.excludeStrategy);
  writeNotNull('match_products_id', instance.matchProductsId);
  writeNotNull('minimum_order_subtotal_money',
      instance.minimumOrderSubtotalMoney?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('time_period_ids', instance.timePeriodIds);
  writeNotNull('valid_from_date', instance.validFromDate);
  writeNotNull('valid_from_local_time', instance.validFromLocalTime);
  writeNotNull('valid_until_date', instance.validUntilDate);
  writeNotNull('valid_until_local_time', instance.validUntilLocalTime);
  writeNotNull('discount_target_scope',
      _$DiscountTargetScopeTypeEnumMap[instance.discountTargetScope]);
  return val;
}

const _$DiscountTargetScopeTypeEnumMap = {
  DiscountTargetScopeType.wholePurchase: 'WHOLE_PURCHASE',
  DiscountTargetScopeType.lineItem: 'LINE_ITEM',
};
