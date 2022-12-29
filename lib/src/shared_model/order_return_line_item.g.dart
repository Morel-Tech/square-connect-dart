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

Map<String, dynamic> _$OrderReturnLineItemToJson(
        OrderReturnLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_line_item_id': instance.sourceLineItemId,
      'name': instance.name,
      'quantity': instance.quantity,
      'quantity_unit': instance.quantityUnit?.toJson(),
      'note': instance.note,
      'catalog_object_id': instance.catalogObjectId,
      'variation_name': instance.variationName,
      'return_modifiers':
          instance.returnModifiers?.map((e) => e.toJson()).toList(),
      'return_taxes': instance.returnTaxes?.map((e) => e.toJson()).toList(),
      'return_discounts':
          instance.returnDiscounts?.map((e) => e.toJson()).toList(),
      'base_price_money': instance.basePriceMoney?.toJson(),
      'variation_total_price_money':
          instance.variationTotalPriceMoney?.toJson(),
      'gross_return_money': instance.grossReturnMoney?.toJson(),
      'total_tax_money': instance.totalTaxMoney?.toJson(),
      'total_discount_money': instance.totalDiscountMoney?.toJson(),
      'total_money': instance.totalMoney?.toJson(),
    };
