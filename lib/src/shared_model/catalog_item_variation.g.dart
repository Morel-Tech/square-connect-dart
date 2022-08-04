// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItemVariation _$CatalogItemVariationFromJson(
        Map<String, dynamic> json) =>
    CatalogItemVariation(
      itemId: json['item_id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String?,
      upc: json['upc'] as String?,
      ordinal: json['ordinal'] as int?,
      pricingType:
          $enumDecode(_$CatalogPricingTypeEnumMap, json['pricing_type']),
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
      locationOverrides: (json['location_overrides'] as List<dynamic>?)
          ?.map((e) => ItemVariationLocationOverrides.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      trackInventory: json['track_inventory'] as bool?,
      inventoryAlertType: $enumDecodeNullable(
          _$InventoryAlertTypeEnumMap, json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'] as int?,
      userData: json['user_data'] as String?,
      serviceDuration: json['service_duration'] as int?,
      measurementUnitId: json['measurement_unit_id'] as String?,
      availableForBooking: json['available_for_booking'] as bool?,
      itemOptionValue: (json['item_option_value'] as List<dynamic>?)
          ?.map((e) => CatalogItemOptionValueForItemVariation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      stockable: json['stockable'] as bool?,
      stockableConversion: json['stockable_conversion'] == null
          ? null
          : CatalogStockConversion.fromJson(
              json['stockable_conversion'] as Map<String, dynamic>),
      teamMemberIds: (json['team_member_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogItemVariationToJson(
        CatalogItemVariation instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'name': instance.name,
      'sku': instance.sku,
      'upc': instance.upc,
      'ordinal': instance.ordinal,
      'pricing_type': _$CatalogPricingTypeEnumMap[instance.pricingType],
      'price_money': instance.priceMoney?.toJson(),
      'location_overrides':
          instance.locationOverrides?.map((e) => e.toJson()).toList(),
      'track_inventory': instance.trackInventory,
      'inventory_alert_type':
          _$InventoryAlertTypeEnumMap[instance.inventoryAlertType],
      'inventory_alert_threshold': instance.inventoryAlertThreshold,
      'user_data': instance.userData,
      'service_duration': instance.serviceDuration,
      'measurement_unit_id': instance.measurementUnitId,
      'available_for_booking': instance.availableForBooking,
      'item_option_value':
          instance.itemOptionValue?.map((e) => e.toJson()).toList(),
      'stockable': instance.stockable,
      'stockable_conversion': instance.stockableConversion?.toJson(),
      'team_member_ids': instance.teamMemberIds,
      'image_ids': instance.imageIds,
    };

const _$CatalogPricingTypeEnumMap = {
  CatalogPricingType.fixedPricing: 'FIXED_PRICING',
  CatalogPricingType.variablePricing: 'VARIABLE_PRICING',
};

const _$InventoryAlertTypeEnumMap = {
  InventoryAlertType.none: 'NONE',
  InventoryAlertType.lowQuantity: 'LOW_QUANTITY',
};
