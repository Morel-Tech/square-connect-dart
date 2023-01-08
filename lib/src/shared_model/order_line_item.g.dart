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
          $enumDecodeNullable(_$OrderLineItemTypeEnumMap, json['item_type']),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      pricingBlocklists: json['pricing_blocklists'] == null
          ? null
          : OrderLineItemPricingBlocklists.fromJson(
              json['pricing_blocklists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemToJson(OrderLineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  val['quantity'] = instance.quantity;
  writeNotNull('quantity_unit', instance.quantityUnit?.toJson());
  writeNotNull('note', instance.note);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('variation_name', instance.variationName);
  writeNotNull(
      'modifiers', instance.modifiers?.map((e) => e.toJson()).toList());
  writeNotNull(
      'applied_taxes', instance.appliedTaxes?.map((e) => e.toJson()).toList());
  writeNotNull('applied_discounts',
      instance.appliedDiscounts?.map((e) => e.toJson()).toList());
  writeNotNull('base_price_money', instance.basePriceMoney?.toJson());
  writeNotNull('variation_total_price_money',
      instance.variationTotalPriceMoney?.toJson());
  writeNotNull('gross_sales_money', instance.grossSalesMoney?.toJson());
  writeNotNull('total_tax_money', instance.totalTaxMoney?.toJson());
  writeNotNull('total_discount_money', instance.totalDiscountMoney?.toJson());
  writeNotNull('total_money', instance.totalMoney?.toJson());
  writeNotNull('item_type', _$OrderLineItemTypeEnumMap[instance.itemType]);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('pricing_blocklists', instance.pricingBlocklists?.toJson());
  return val;
}

const _$OrderLineItemTypeEnumMap = {
  OrderLineItemType.item: 'ITEM',
  OrderLineItemType.customAmount: 'CUSTOM_AMOUNT',
  OrderLineItemType.giftCard: 'GIFT_CARD',
};
