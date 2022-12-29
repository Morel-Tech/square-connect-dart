// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_line_item_modifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReturnLineItemModifier _$OrderReturnLineItemModifierFromJson(
        Map<String, dynamic> json) =>
    OrderReturnLineItemModifier(
      id: json['id'] as String?,
      sourceModifierId: json['source_modifier_id'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      name: json['name'] as String?,
      basePriceMoney: json['base_price_money'] == null
          ? null
          : Money.fromJson(json['base_price_money'] as Map<String, dynamic>),
      totalPriceMoney: json['total_price_money'] == null
          ? null
          : Money.fromJson(json['total_price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReturnLineItemModifierToJson(
        OrderReturnLineItemModifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_modifier_id': instance.sourceModifierId,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'base_price_money': instance.basePriceMoney?.toJson(),
      'total_price_money': instance.totalPriceMoney?.toJson(),
    };
