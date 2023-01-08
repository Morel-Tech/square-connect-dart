// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item_pricing_blocklists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItemPricingBlocklists _$OrderLineItemPricingBlocklistsFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemPricingBlocklists(
      blockedDiscounts: (json['blocked_discounts'] as List<dynamic>?)
          ?.map((e) => OrderLineItemPricingBlocklistsBlockedDiscount.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      blockedTaxes: (json['blocked_taxes'] as List<dynamic>?)
          ?.map((e) => OrderLineItemPricingBlocklistsBlockedTax.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderLineItemPricingBlocklistsToJson(
    OrderLineItemPricingBlocklists instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blocked_discounts',
      instance.blockedDiscounts?.map((e) => e.toJson()).toList());
  writeNotNull(
      'blocked_taxes', instance.blockedTaxes?.map((e) => e.toJson()).toList());
  return val;
}
