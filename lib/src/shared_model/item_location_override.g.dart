// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_location_override.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemVariationLocationOverride _$ItemVariationLocationOverrideFromJson(
        Map<String, dynamic> json) =>
    ItemVariationLocationOverride(
      locationId: json['location_id'] as String,
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
      pricingType: _$enumDecodeNullable(
          _$CatalogPricingTypeEnumMap, json['pricing_type']),
      trackInventory: json['track_inventory'] as bool?,
      inventoryAlertType: _$enumDecodeNullable(
          _$InventoryAlertTypeEnumMap, json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'] as int?,
    );

Map<String, dynamic> _$ItemVariationLocationOverrideToJson(
        ItemVariationLocationOverride instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'price_money': instance.priceMoney?.toJson(),
      'pricing_type': _$CatalogPricingTypeEnumMap[instance.pricingType],
      'track_inventory': instance.trackInventory,
      'inventory_alert_type':
          _$InventoryAlertTypeEnumMap[instance.inventoryAlertType],
      'inventory_alert_threshold': instance.inventoryAlertThreshold,
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

const _$CatalogPricingTypeEnumMap = {
  CatalogPricingType.fixedPricing: 'FIXED_PRICING',
  CatalogPricingType.variablePricing: 'VARIABLE_PRICING',
};

const _$InventoryAlertTypeEnumMap = {
  InventoryAlertType.none: 'NONE',
  InventoryAlertType.lowQuantity: 'LOW_QUANTITY',
};
