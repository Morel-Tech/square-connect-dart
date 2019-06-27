import 'dart:core';

import 'package:flutter/rendering.dart';

import '../money.dart';
import 'catalog-enums.dart';

class CatalogObject {
  final CatalogObjectType type;
  final String id;
  final DateTime updatedAt;
  final int version;
  final bool isDeleted;
  final bool presentAtAllLocations;

}

class CatalogItem {
  final String name;
  final String description;
  final String abbreviation;
  final Color labelColor;
  final bool availableOnline;
  final bool availableForPickup;
  final bool availableElectronically;
  final String categoryId;
  final List<String> taxIds; 

  final List<CatalogItemModifierListInfo> modifierListInfo; // TODO

}

class CatalogItemVariation {
  final String itemId;
  final String name;
  final String sku;
  final String upc;
  final int ordinal;
  final CatalogPricingType pricingType;
  final Money priceMoney;
  final List<ItemVariationLocationOverride> locationOverrides;
  final bool trackInventory;
  final InventoryAlertType inventoryAlertType;
  final int inventoryAlertThreshold;
  final String userData;
  final int serviceDuration;
  final String catalogMeasurementUnitId;
  final String measurementUnitId;

  CatalogItemVariation({
    this.itemId,
    this.name,
    this.sku,
    this.upc,
    this.ordinal,
    this.pricingType,
    this.priceMoney,
    this.locationOverrides,
    this.trackInventory,
    this.inventoryAlertType,
    this.inventoryAlertThreshold,
    this.userData,
    this.serviceDuration,
    this.catalogMeasurementUnitId,
    this.measurementUnitId
  }) :
  assert(name.length <= 255)
  ;

  factory CatalogItemVariation.fromJson(Map<String, dynamic> json) {
    return CatalogItemVariation (
      itemId: json['item_id'],
      name: json['name'],
      sku: json['sku'],
      upc: json['upc'],
      ordinal: json['ordinal'],
      pricingType: getCatalogPricingTypeFromString(json['pricing_type']),
      priceMoney: Money.fromJson(json['price_money']),
      locationOverrides: (json['location_overrides'] as List).map((item) => ItemVariationLocationOverride.fromJson(item)),
      trackInventory: json['track_inventory'],
      inventoryAlertType: getInventoryAlertTypeFromString(json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'],
      userData: json['user_data'],
      serviceDuration: json['service_duration'],
      catalogMeasurementUnitId: json['catalog_measurement_unit_id'],
      measurementUnitId: json['measurement_unit_id'],
    );
  }
}

class ItemVariationLocationOverride {
  final String locationId;
  final Money priceMoney;
  final CatalogPricingType pricingType;
  final bool trackInventory;
  final InventoryAlertType inventoryAlertType;
  final int inventoryAlertThreshold;

  ItemVariationLocationOverride({this.locationId, this.priceMoney, this.pricingType, this.trackInventory, this.inventoryAlertType, this.inventoryAlertThreshold});

  factory ItemVariationLocationOverride.fromJson(Map<String, dynamic> json) {
    return ItemVariationLocationOverride(
      locationId: json['location_id'],
      priceMoney: Money.fromJson(json['price_money']),
      pricingType: getCatalogPricingTypeFromString(json['pricingType']),
      trackInventory: json['track_inventory'],
      inventoryAlertType: getInventoryAlertTypeFromString(json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'],
    );
  }
}

class CatalogItemModifierListInfo {
  final String modifierListId;
  final List<CatalogModifierOverride> modifierOverrides;
  final int minSelectedModifiers;
  final int maxSelectedModifiers;
  final bool enabled;

  CatalogItemModifierListInfo({this.modifierListId, this.modifierOverrides, this.minSelectedModifiers, this.maxSelectedModifiers, this.enabled});

  factory CatalogItemModifierListInfo.fromJson(Map<String, dynamic> json) {
    return CatalogItemModifierListInfo (
      modifierListId: json['modifier_list_id'],
      minSelectedModifiers: json['min_selected_modifiers'],
      maxSelectedModifiers: json['max_selected_modifiers'],
      enabled: json['enabled'],
      modifierOverrides: (json['modifier_overrides'] as List<Map<String, dynamic>>).map((item) => CatalogModifierOverride.fromJson(item)).toList(),
    );
  }
}

class CatalogModifierOverride {
  /// The ID of the [CatalogModifier] whose default behavior is being overridden.
  final String modifierId;
  /// If true, this [CatalogModifier] should be selected by default for this [CatalogItem].
  final bool onByDefault;

  CatalogModifierOverride({this.modifierId, this.onByDefault});

  factory CatalogModifierOverride.fromJson(Map<String, dynamic> json) {
    return CatalogModifierOverride (
      modifierId: json['modifier_id'],
      onByDefault: json['on_by_default'],
    );
  }
}