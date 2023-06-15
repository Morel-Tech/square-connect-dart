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
      catalogVersion: json['catalog_version'] as int?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      quantity: json['quantity'] as String?,
    );

Map<String, dynamic> _$OrderLineItemModifierToJson(
    OrderLineItemModifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('name', instance.name);
  writeNotNull('base_price_money', instance.basePriceMoney?.toJson());
  writeNotNull('total_price_money', instance.totalPriceMoney?.toJson());
  writeNotNull('quantity', instance.quantity);
  writeNotNull('metadata', instance.metadata);
  return val;
}
