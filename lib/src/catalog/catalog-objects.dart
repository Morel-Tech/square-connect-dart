import 'dart:core';
import 'dart:convert';

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
  final List<String> presentAtLocationIds;
  final List<String> absentAtLocationIds;
  final String imageId;
  final CatalogItem itemData;
  final CatalogItemVariation itemVariationData;
  final CatalogCategory categoryData;
  final CatalogTax taxData;
  final CatalogDiscount discountData;
  final CatalogModifierList modifierListData;
  final CatalogModifier modifierData;
  final CatalogImage imageData;
  final CatalogMeasurementUnit measurementUnitData;

  CatalogObject({
    this.type,
    this.id,
    this.updatedAt,
    this.version,
    this.isDeleted,
    this.presentAtAllLocations,
    this.presentAtLocationIds,
    this.absentAtLocationIds,
    this.imageId,
    this.itemData,
    this.itemVariationData,
    this.categoryData,
    this.taxData,
    this.discountData,
    this.modifierListData,
    this.modifierData,
    this.imageData,
    this.measurementUnitData
  });

  factory CatalogObject.fromJson(Map<String, dynamic> json) {
    return CatalogObject (
      type: getCatalogObjectTypeFromString(json['type']),
      id: json['id'],
      updatedAt: DateTime.parse(json['updated_at']),
      version: json['version'],
      isDeleted: json['is_deleted'],
      presentAtAllLocations: json['present_at_all_locations'],
      presentAtLocationIds: json['present_at_location_ids'] != null ? List<String>.from(json['present_at_location_ids']) : null,
      absentAtLocationIds: json['absent_at_location_ids'] != null ? List<String>.from(json['absent_at_location_ids']) : null,
      imageId: json['image_id'],
      itemData: json['item_data'] != null ? CatalogItem.fromJson(json['item_data']) : null,
      categoryData: json['category_data'] != null ? CatalogCategory.fromJson(json['category_data']) : null,
      itemVariationData: json['item_variation_data'] != null ? CatalogItemVariation.fromJson(json['item_variation_data']) : null,
      taxData: json['tax_data'] != null ? CatalogTax.fromJson(json['tax_data']) : null,
      discountData: json['discount_data'] != null ? CatalogDiscount.fromJson(json['discount_data']) : null,
      modifierListData: json['modifier_list_data'] != null ? CatalogModifierList.fromJson(json['modifier_list_data']) : null,
      modifierData: json['modifier_data'] != null ? CatalogModifier.fromJson(json['modifier_data']) : null,
      imageData: json['image_data'] != null ? CatalogImage.fromJson(json['image_data']) : null,
    );
  }
}

class CatalogItem {
  final String name;
  final String description;
  final String abbreviation;
  final String labelColor;
  final bool availableOnline;
  final bool availableForPickup;
  final bool availableElectronically;
  final String categoryId;
  final List<String> taxIds; 
  final List<CatalogItemModifierListInfo> modifierListInfo;
  final List<CatalogObject> variations;
  final CatalogItemProductType productType;
  final bool skipModifierScreen;

  CatalogItem({
    this.name,
    this.description,
    this.abbreviation,
    this.labelColor,
    this.availableOnline,
    this.availableForPickup,
    this.availableElectronically,
    this.categoryId,
    this.taxIds,
    this.modifierListInfo,
    this.variations,
    this.productType,
    this.skipModifierScreen
  });

  factory CatalogItem.fromJson(Map<String, dynamic> json) {    
    return CatalogItem(
      name: json['name'],
      description: json['description'],
      abbreviation: json['abbreviation'],
      labelColor: json['label_color'],
      availableOnline: json['available_online'],
      availableForPickup: json['available_for_pickup'],
      availableElectronically: json['available_electronically'],
      categoryId: json['category_id'],
      taxIds: json['tax_ids'] != null ? List<String>.of(json['tax_ids']) : null,
      modifierListInfo: (json['modifier_list_info'] as List).map((item) => CatalogItemModifierListInfo.fromJson(item)).toList(),
      variations: (json['variations'] as List).map((item) => CatalogObject.fromJson(item)).toList(),
      productType: getCatalogItemProductTypeFromString(json['product_type']),
      skipModifierScreen: json['skip_modifier_screen'],
    );
  }

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
      locationOverrides: json['location_overrides'] != null ? (json['location_overrides'] as List).map((item) => ItemVariationLocationOverride.fromJson(item)).toList() : null,
      trackInventory: json['track_inventory'],
      inventoryAlertType: json['inventory_alert_type'] != null ? getInventoryAlertTypeFromString(json['inventory_alert_type']) : null,
      inventoryAlertThreshold: json['inventory_alert_threshold'],
      userData: json['user_data'],
      serviceDuration: json['service_duration'],
      catalogMeasurementUnitId: json['catalog_measurement_unit_id'],
      measurementUnitId: json['measurement_unit_id'],
    );
  }
}

class CatalogCategory {
  final String name;

  CatalogCategory({this.name});

  factory CatalogCategory.fromJson(Map<String, dynamic> json) {
    return CatalogCategory(
      name: json['name'],
    );
  }
  
}

class CatalogTax {
  final String name;
  final TaxCalculationPhase calculationPhase;
  final TaxInclusionType inclusionType;
  final double percentage;
  final bool appliesToCustomAmounts;
  final bool enabled;

  CatalogTax({this.name, this.calculationPhase, this.inclusionType, this.percentage, this.appliesToCustomAmounts, this.enabled});

  factory CatalogTax.fromJson(Map<String, dynamic> json) {
    return CatalogTax (
      name: json['name'],
      calculationPhase: getTaxCalculationPhaseFromString(json['calculation_phase']),
      inclusionType: getTaxInclusionTypeFromString(json['inclusion_type']),
      percentage: double.parse(json['percentage']),
      appliesToCustomAmounts: json['applies_to_custom_amounts'],
      enabled: json['enabled'],
    );
  }
}

class CatalogDiscount {
  final String name;
  final CatalogDiscountType discountType;
  final double percentage;
  final Money amountMoney;
  final bool pinRequired;
  final String labelColor;

  CatalogDiscount({
    this.name,
    this.discountType,
    this.percentage,
    this.amountMoney,
    this.pinRequired,
    this.labelColor
  });

  factory CatalogDiscount.fromJson(Map<String, dynamic> json) {
    return CatalogDiscount (
      name: json['name'],
      discountType: getCatalogDiscountTypeFromString(json['discount_type']),
      percentage: double.parse('percentage'),
      amountMoney: Money.fromJson(json['amount_money']),
      pinRequired: json['pin_required'],
      labelColor: json['label_color'],
    );
  }
}

class CatalogModifierList {
  final String name;
  final CatalogModifierListSelectionType selectionType;
  final List<CatalogObject> modifiers;

  CatalogModifierList({this.name, this.selectionType, this.modifiers});

  factory CatalogModifierList.fromJson(Map<String, dynamic> json) {
    return CatalogModifierList (
      name: json['name'],
      selectionType: getCatalogModifierListSelectionTypeFromString(json['selection_type']),
      modifiers: json['modifiers'] != null ? (json['modifiers'] as List).map((item) => CatalogObject.fromJson(item)).toList() : null,
    );
  }
}

class CatalogModifier {
  final String name;
  final Money priceMoney;

  CatalogModifier({this.name, this.priceMoney});

  factory CatalogModifier.fromJson(Map<String, dynamic> json) {
    return CatalogModifier (
      name: json['name'],
      priceMoney: Money.fromJson(json['price_money']),
    );
  }
}

class CatalogImage {
  final String name;
  final String url;
  final String caption;

  CatalogImage({this.name, this.url, this.caption});

  factory CatalogImage.fromJson(Map<String, dynamic> json) {
    return CatalogImage (
      name: json['name'],
      url: json['url'],
      caption: json['caption']
    );
  }
}

class CatalogMeasurementUnit {
  final MeasurementUnit measurementUnit;
  final int precision;

  CatalogMeasurementUnit({
    this.measurementUnit,
    this.precision
  });

  factory CatalogMeasurementUnit.fromJson(Map<String, dynamic> json) {
    return CatalogMeasurementUnit(
      measurementUnit: json['measurement_unit'] != null ? MeasurementUnit.fromJson(json['measurement_unit']) : null,
      precision: json['precision'],
    );
  }
}

class MeasurementUnit {
  final MeasurementUnitCustom customUnit;
  final MeasurementUnitArea areaUnit;
  final MeasurementUnitLength lengthUnit;
  final MeasurementUnitVolume volumeUnit;
  final MeasurementUnitWeight weightUnit;
  final String genericUnit;

  MeasurementUnit({
    this.customUnit,
    this.areaUnit,
    this.lengthUnit,
    this.volumeUnit,
    this.weightUnit,
    this.genericUnit
  });

  factory MeasurementUnit.fromJson(Map<String, dynamic> json) {
    return MeasurementUnit(
      customUnit: json['custom_unit'] != null ? MeasurementUnitCustom.fromJson(json['custom_unit']) : null,
      areaUnit: json['area_unit'] != null ? getMeasurementUnitAreaFromString(json['area_unit']) : null,
      lengthUnit: json['length_unit'] != null ? getMeasurementUnitLengthFromString(json['length_unit']) : null,
      volumeUnit: json['volume_unit'] != null ? getMeasurementUnitVolumeFromString(json['volume_unit']) : null,
      weightUnit: json['weight_unit'] != null ? getMeasurementUnitWeightFromString(json['weight_unit']) : null,
      genericUnit: json['generic_unit'],
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
      modifierOverrides: json['modifier_overrides'] != null ? (json['modifier_overrides'] as List).map((item) => CatalogModifierOverride.fromJson(item)).toList() : null,
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

class CatalogObjectBatch {
  final List<CatalogObject> objects;

  CatalogObjectBatch({this.objects});

  factory CatalogObjectBatch.fromJson(Map<String, dynamic> json) {
    return CatalogObjectBatch (
      objects: (json['objects'] as List).map((item) => CatalogObject.fromJson(item)).toList(),
    );
  }
}

class CatalogInfoResponseLimits {
  final int batchUpsertMaxObjectsPerBatch;
  final int batchUpsertMaxTotalObjects;
  final int batchRetrieveMaxObjectIds;
  final int searchMaxPageLimit;
  final int batchDeleteMaxObjectIds;
  final int updateItemTaxesMaxItemIds;
  final int updateItemTaxesMaxTaxesToEnable;
  final int updateItemTaxesMaxTaxesToDisable;
  final int updateItemModifierListsMaxItemIds;
  final int updateItemModifierListsMaxModifierListsToEnable;
  final int updateItemModifierListsMaxModifierListsToDisable;

  CatalogInfoResponseLimits({
    this.batchUpsertMaxObjectsPerBatch,
    this.batchUpsertMaxTotalObjects,
    this.batchRetrieveMaxObjectIds,
    this.searchMaxPageLimit,
    this.batchDeleteMaxObjectIds,
    this.updateItemTaxesMaxItemIds,
    this.updateItemTaxesMaxTaxesToEnable,
    this.updateItemTaxesMaxTaxesToDisable,
    this.updateItemModifierListsMaxItemIds,
    this.updateItemModifierListsMaxModifierListsToEnable,
    this.updateItemModifierListsMaxModifierListsToDisable
  });

  factory CatalogInfoResponseLimits.fromJson(Map<String, dynamic> json) {
    return CatalogInfoResponseLimits(
      batchUpsertMaxObjectsPerBatch: json['batch_upsert_max_objects_per_batch'],
      batchUpsertMaxTotalObjects: json['batch_upsert_max_total_objects'],
      batchRetrieveMaxObjectIds: json['batch_retrieve_max_object_ids'],
      searchMaxPageLimit: json['search_max_page_limit'],
      batchDeleteMaxObjectIds: json['batch_delete_max_object_ids'],
      updateItemTaxesMaxItemIds: json['update_item_taxes_max_item_ids'],
      updateItemTaxesMaxTaxesToEnable: json['update_item_taxes_max_taxes_to_enable'],
      updateItemTaxesMaxTaxesToDisable: json['update_item_taxes_max_taxes_to_disable'],
      updateItemModifierListsMaxItemIds: json['update_item_modifier_lists_max_item_ids'],
      updateItemModifierListsMaxModifierListsToEnable: json['update_item_modifier_lists_max_modifier_lists_to_enable'],
      updateItemModifierListsMaxModifierListsToDisable: json['update_item_modifier_lists_max_modifier_lists_to_disable'],
    );
  }
}

class StandardUnitDescriptionGroup {
  final List<StandardUnitDescription> standardUnitDescriptions;
    final String languageCode;
  
    StandardUnitDescriptionGroup({this.standardUnitDescriptions, this.languageCode});
  
    
}
  
class StandardUnitDescription {
  final MeasurementUnit unit;
  final String name;
  final String abbreviation;

  StandardUnitDescription(this.unit, this.name, this.abbreviation);

  
}

class MeasurementUnitCustom {
  final String name;
  final String abbreviation;

  MeasurementUnitCustom({this.name, this.abbreviation});

  factory MeasurementUnitCustom.fromJson(Map<String, dynamic> json) {
    return MeasurementUnitCustom(
      name: json['name'],
      abbreviation: json['abbreviation'],
    );
  }
}

