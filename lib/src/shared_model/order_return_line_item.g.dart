// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReturnLineItem _$OrderReturnLineItemFromJson(Map<String, dynamic> json) =>
    OrderReturnLineItem(
      id: json['id'] as String?,
      sourceLineItemId: json['source_line_item_id'] as String?,
      name: json['name'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      quantityUnit: json['quantity_unit'] == null
          ? null
          : OrderQuantityUnit.fromJson(
              json['quantity_unit'] as Map<String, dynamic>),
      note: json['note'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      variationName: json['variation_name'] as String?,
      returnModifiers: (json['return_modifiers'] as List<dynamic>?)
          ?.map((e) =>
              OrderReturnLineItemModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnTaxes: (json['return_taxes'] as List<dynamic>?)
          ?.map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnDiscounts: (json['return_discounts'] as List<dynamic>?)
          ?.map((e) => OrderReturnDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      basePriceMoney: json['base_price_money'] == null
          ? null
          : Money.fromJson(json['base_price_money'] as Map<String, dynamic>),
      variationTotalPriceMoney: json['variation_total_price_money'] == null
          ? null
          : Money.fromJson(
              json['variation_total_price_money'] as Map<String, dynamic>),
      grossReturnMoney: json['gross_return_money'] == null
          ? null
          : Money.fromJson(json['gross_return_money'] as Map<String, dynamic>),
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
    );

Map<String, dynamic> _$OrderReturnLineItemToJson(OrderReturnLineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('source_line_item_id', instance.sourceLineItemId);
  writeNotNull('name', instance.name);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('quantity_unit', instance.quantityUnit?.toJson());
  writeNotNull('note', instance.note);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('variation_name', instance.variationName);
  writeNotNull('return_modifiers',
      instance.returnModifiers?.map((e) => e.toJson()).toList());
  writeNotNull(
      'return_taxes', instance.returnTaxes?.map((e) => e.toJson()).toList());
  writeNotNull('return_discounts',
      instance.returnDiscounts?.map((e) => e.toJson()).toList());
  writeNotNull('base_price_money', instance.basePriceMoney?.toJson());
  writeNotNull('variation_total_price_money',
      instance.variationTotalPriceMoney?.toJson());
  writeNotNull('gross_return_money', instance.grossReturnMoney?.toJson());
  writeNotNull('total_tax_money', instance.totalTaxMoney?.toJson());
  writeNotNull('total_discount_money', instance.totalDiscountMoney?.toJson());
  writeNotNull('total_money', instance.totalMoney?.toJson());
  return val;
}
