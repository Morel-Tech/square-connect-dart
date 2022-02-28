// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItem _$OrderLineItemFromJson(Map<String, dynamic> json) =>
    OrderLineItem(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      quantity: json['quantity'] as String,
      quantityUnit: json['quantity_unit'] == null
          ? null
          : OrderQuantityUnit.fromJson(
              json['quantity_unit'] as Map<String, dynamic>),
      note: json['note'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      variationName: json['variation_name'] as String?,
      modifiers: (json['modifiers'] as List<dynamic>?)
          ?.map(
              (e) => OrderLineItemModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      appliedDiscounts: (json['applied_discounts'] as List<dynamic>?)
          ?.map(
              (e) => OrderLineItemDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      appliedTaxes: (json['applied_taxes'] as List<dynamic>?)
          ?.map((e) => OrderLineItemTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      basePriceMoney: json['base_price_money'] == null
          ? null
          : Money.fromJson(json['base_price_money'] as Map<String, dynamic>),
      variationTotalPriceMoney: json['variation_total_price_money'] == null
          ? null
          : Money.fromJson(
              json['variation_total_price_money'] as Map<String, dynamic>),
      grossSalesMoney: json['gross_sales_money'] == null
          ? null
          : Money.fromJson(json['gross_sales_money'] as Map<String, dynamic>),
      totalTaxMoney: json['total_tax_money'] == null
          ? null
          : Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      totalDiscountMoney: json['total_discount_money'] == null
          ? null
          : Money.fromJson(
              json['total_discount_money'] as Map<String, dynamic>),
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      itemType:
          _$enumDecodeNullable(_$OrderLineItemTypeEnumMap, json['item_type']),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      pricingBlocklists: json['pricing_blocklists'] == null
          ? null
          : OrderLineItemPricingBlocklists.fromJson(
              json['pricing_blocklists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemToJson(OrderLineItem instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'quantity': instance.quantity,
      'quantity_unit': instance.quantityUnit?.toJson(),
      'note': instance.note,
      'catalog_object_id': instance.catalogObjectId,
      'variation_name': instance.variationName,
      'modifiers': instance.modifiers?.map((e) => e.toJson()).toList(),
      'applied_taxes': instance.appliedTaxes?.map((e) => e.toJson()).toList(),
      'applied_discounts':
          instance.appliedDiscounts?.map((e) => e.toJson()).toList(),
      'base_price_money': instance.basePriceMoney?.toJson(),
      'variation_total_price_money':
          instance.variationTotalPriceMoney?.toJson(),
      'gross_sales_money': instance.grossSalesMoney?.toJson(),
      'total_tax_money': instance.totalTaxMoney?.toJson(),
      'total_discount_money': instance.totalDiscountMoney?.toJson(),
      'total_money': instance.totalMoney?.toJson(),
      'item_type': _$OrderLineItemTypeEnumMap[instance.itemType],
      'metadata': instance.metadata,
      'pricing_blocklists': instance.pricingBlocklists?.toJson(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$OrderLineItemTypeEnumMap = {
  OrderLineItemType.item: 'ITEM',
  OrderLineItemType.customAmount: 'CUSTOM_AMOUNT',
  OrderLineItemType.giftCard: 'GIFT_CARD',
};
