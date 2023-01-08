// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_location_override.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemVariationLocationOverrides _$ItemVariationLocationOverridesFromJson(
        Map<String, dynamic> json) =>
    ItemVariationLocationOverrides(
      locationId: json['location_id'] as String,
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
      pricingType: $enumDecodeNullable(
          _$CatalogPricingTypeEnumMap, json['pricing_type']),
      trackInventory: json['track_inventory'] as bool?,
      inventoryAlertType: $enumDecodeNullable(
          _$InventoryAlertTypeEnumMap, json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'] as int?,
      soldOut: json['sold_out'] as bool?,
      soldOutValidUntil: json['sold_out_valid_until'] as String?,
    );

Map<String, dynamic> _$ItemVariationLocationOverridesToJson(
    ItemVariationLocationOverrides instance) {
  final val = <String, dynamic>{
    'location_id': instance.locationId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price_money', instance.priceMoney?.toJson());
  writeNotNull(
      'pricing_type', _$CatalogPricingTypeEnumMap[instance.pricingType]);
  writeNotNull('track_inventory', instance.trackInventory);
  writeNotNull('inventory_alert_type',
      _$InventoryAlertTypeEnumMap[instance.inventoryAlertType]);
  writeNotNull('inventory_alert_threshold', instance.inventoryAlertThreshold);
  writeNotNull('sold_out', instance.soldOut);
  writeNotNull('sold_out_valid_until', instance.soldOutValidUntil);
  return val;
}

const _$CatalogPricingTypeEnumMap = {
  CatalogPricingType.fixedPricing: 'FIXED_PRICING',
  CatalogPricingType.variablePricing: 'VARIABLE_PRICING',
};

const _$InventoryAlertTypeEnumMap = {
  InventoryAlertType.none: 'NONE',
  InventoryAlertType.lowQuantity: 'LOW_QUANTITY',
};
