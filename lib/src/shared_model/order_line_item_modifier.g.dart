// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item_modifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItemModifier _$OrderLineItemModifierFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemModifier(
      uid: json['uid'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      name: json['name'] as String?,
      basePriceMoney: json['base_price_money'] == null
          ? null
          : Money.fromJson(json['base_price_money'] as Map<String, dynamic>),
      totalPriceMoney: json['total_price_money'] == null
          ? null
          : Money.fromJson(json['total_price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemModifierToJson(
        OrderLineItemModifier instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'base_price_money': instance.basePriceMoney?.toJson(),
      'total_price_money': instance.totalPriceMoney?.toJson(),
    };
