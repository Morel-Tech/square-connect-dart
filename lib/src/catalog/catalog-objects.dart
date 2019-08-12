import 'dart:core';

import 'package:square_connect/src/catalog/catalog-enums-converter.dart';
import 'package:square_connect/square_connect.dart';

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

  CatalogObject(
      {this.type,
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
      this.measurementUnitData});

  factory CatalogObject.fromJson(Map<String, dynamic> json) {
    return CatalogObject(
      type: json['type'] != null 
        ? getCatalogObjectTypeFromString(json['type'])
        : null,
      id: json['id'],
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
      version: json['version'],
      isDeleted: json['is_deleted'],
      presentAtAllLocations: json['present_at_all_locations'],
      presentAtLocationIds: json['present_at_location_ids'] != null
          ? List<String>.from(json['present_at_location_ids'])
          : null,
      absentAtLocationIds: json['absent_at_location_ids'] != null
          ? List<String>.from(json['absent_at_location_ids'])
          : null,
      imageId: json['image_id'],
      itemData: json['item_data'] != null
          ? CatalogItem.fromJson(json['item_data'])
          : null,
      categoryData: json['category_data'] != null
          ? CatalogCategory.fromJson(json['category_data'])
          : null,
      itemVariationData: json['item_variation_data'] != null
          ? CatalogItemVariation.fromJson(json['item_variation_data'])
          : null,
      taxData: json['tax_data'] != null
          ? CatalogTax.fromJson(json['tax_data'])
          : null,
      discountData: json['discount_data'] != null
          ? CatalogDiscount.fromJson(json['discount_data'])
          : null,
      modifierListData: json['modifier_list_data'] != null
          ? CatalogModifierList.fromJson(json['modifier_list_data'])
          : null,
      modifierData: json['modifier_data'] != null
          ? CatalogModifier.fromJson(json['modifier_data'])
          : null,
      imageData: json['image_data'] != null
          ? CatalogImage.fromJson(json['image_data'])
          : null,
      measurementUnitData: json['measurement_unit_data'] != null
          ? CatalogMeasurementUnit.fromJson(json['measurement_unit_data'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (type != null) body['type'] = getStringFromCatalogObjectType(type);
    if (id != null) body['id'] = id;
    if (updatedAt != null) body['updated_at'] = updatedAt.toString();
    if (version != null) body['version'] = version;
    if (isDeleted != null) body['is_deleted'] = isDeleted;
    if (presentAtAllLocations != null) body['present_at_all_locations'] = presentAtAllLocations;
    if (presentAtLocationIds != null) body['present_at_location_ids'] = presentAtLocationIds;
    if (absentAtLocationIds != null) body['absent_at_location_ids'] = absentAtLocationIds;
    if (imageId != null) body['image_id'] = imageId;
    if (itemData != null) body['item_data'] = itemData.toJson();
    if (categoryData != null) body['category_data'] = categoryData.toJson();
    if (itemVariationData != null) body['item_variation_data'] = itemVariationData.toJson();
    if (taxData != null) body['tax_data'] = taxData.toJson();
    if (discountData != null) body['discount_data'] = discountData.toJson();
    if (modifierListData != null) body['modifier_list_data'] = modifierListData.toJson();
    if (modifierData != null) body['modifier_data'] = modifierData.toJson();
    if (imageData != null) body['image_data'] = imageData.toJson();
    if (measurementUnitData != null) body['measurement_unit_data'] = measurementUnitData.toJson();
    
    return body;
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

  CatalogItem(
      {this.name,
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
      this.skipModifierScreen});

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
      modifierListInfo: (json['modifier_list_info'] as List)
          .map((item) => CatalogItemModifierListInfo.fromJson(item))
          .toList(),
      variations: (json['variations'] as List)
          .map((item) => CatalogObject.fromJson(item))
          .toList(),
      productType: getCatalogItemProductTypeFromString(json['product_type']),
      skipModifierScreen: json['skip_modifier_screen'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (name != null) body['name'] = name;
    if (description != null) body['description'] = description;
    if (abbreviation != null) body['abbreviation'] = abbreviation;
    if (labelColor != null) body['label_color'] = labelColor;
    if (availableOnline != null) body['available_online'] = availableOnline;
    if (availableForPickup != null) body['available_for_pickup'] = availableForPickup;
    if (availableElectronically != null) body['available_electronically'] = availableElectronically;
    if (categoryId != null) body['category_id'] = categoryId;
    if (taxIds != null) body['tax_ids'] = taxIds;
    if (modifierListInfo != null) body['modifier_list_info'] = modifierListInfo.map((item) => item.toJson());
    if (variations != null) body['variations'] = variations.map((item) => item.toJson()).toList();
    if (productType != null) body['product_type'] = getStringFromCatalogItemProductType(productType);
    if (skipModifierScreen != null) body['skip_modifier_screen'] = skipModifierScreen;
    
    return body;
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

  CatalogItemVariation(
      {this.itemId,
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
      this.measurementUnitId})
      : assert(name.length <= 255);

  factory CatalogItemVariation.fromJson(Map<String, dynamic> json) {
    return CatalogItemVariation(
      itemId: json['item_id'],
      name: json['name'],
      sku: json['sku'],
      upc: json['upc'],
      ordinal: json['ordinal'],
      pricingType: getCatalogPricingTypeFromString(json['pricing_type']),
      priceMoney: Money.fromJson(json['price_money']),
      locationOverrides: json['location_overrides'] != null
          ? (json['location_overrides'] as List)
              .map((item) => ItemVariationLocationOverride.fromJson(item))
              .toList()
          : null,
      trackInventory: json['track_inventory'],
      inventoryAlertType: json['inventory_alert_type'] != null
          ? getInventoryAlertTypeFromString(json['inventory_alert_type'])
          : null,
      inventoryAlertThreshold: json['inventory_alert_threshold'],
      userData: json['user_data'],
      serviceDuration: json['service_duration'],
      catalogMeasurementUnitId: json['catalog_measurement_unit_id'],
      measurementUnitId: json['measurement_unit_id'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (itemId != null) body['item_id'] = itemId;
    if (name != null) body['name'] = name;
    if (sku != null) body['sku'] = sku;
    if (upc != null) body['upc'] = upc;
    if (ordinal != null) body['ordinal'] = ordinal;
    if (pricingType != null) body['pricing_type'] = getStringFromCatalogPricingType(pricingType);
    if (priceMoney != null) body['price_money'] = priceMoney.toJson();
    if (locationOverrides != null) body['location_overrides'] = locationOverrides.map((item) => item.toJson()).toList();
    if (trackInventory != null) body['track_inventory'] = trackInventory;
    if (inventoryAlertType != null) body['inventory_alert_type'] = getStringFromInventoryAlertType(inventoryAlertType);
    if (inventoryAlertThreshold != null) body['inventory_alert_threshold'] = inventoryAlertThreshold;
    if (userData != null) body['user_data'] = userData;
    if (serviceDuration != null) body['service_duration'] = serviceDuration;
    if (measurementUnitId != null) body['measurement_unit_id'] = measurementUnitId;
    
    return body;
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

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    if (name != null) body['name'] = name;
    return body;
  }
}

class CatalogTax {
  final String name;
  final TaxCalculationPhase calculationPhase;
  final TaxInclusionType inclusionType;
  final double percentage;
  final bool appliesToCustomAmounts;
  final bool enabled;

  CatalogTax(
      {this.name,
      this.calculationPhase,
      this.inclusionType,
      this.percentage,
      this.appliesToCustomAmounts,
      this.enabled});

  factory CatalogTax.fromJson(Map<String, dynamic> json) {
    return CatalogTax(
      name: json['name'],
      calculationPhase:
          getTaxCalculationPhaseFromString(json['calculation_phase']),
      inclusionType: getTaxInclusionTypeFromString(json['inclusion_type']),
      percentage: double.parse(json['percentage']),
      appliesToCustomAmounts: json['applies_to_custom_amounts'],
      enabled: json['enabled'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (name != null) body['name'] = name;
    if (calculationPhase != null) body['calculation_phase'] = getStringFromTaxCalculationPhase(calculationPhase);
    if (inclusionType != null) body['inclusion_type'] = getStringFromTaxInclusionType(inclusionType);
    if (percentage != null) body['percentage'] = percentage.toString();
    if (appliesToCustomAmounts != null) body['applies_to_custom_amounts'] = appliesToCustomAmounts;
    if (enabled != null) body['enabled'] = enabled;
    
    return body;
  }
}

class CatalogDiscount {
  final String name;
  final CatalogDiscountType discountType;
  final double percentage;
  final Money amountMoney;
  final bool pinRequired;
  final String labelColor;

  CatalogDiscount(
      {this.name,
      this.discountType,
      this.percentage,
      this.amountMoney,
      this.pinRequired,
      this.labelColor});

  factory CatalogDiscount.fromJson(Map<String, dynamic> json) {
    return CatalogDiscount(
      name: json['name'],
      discountType: getCatalogDiscountTypeFromString(json['discount_type']),
      percentage: double.parse('percentage'),
      amountMoney: Money.fromJson(json['amount_money']),
      pinRequired: json['pin_required'],
      labelColor: json['label_color'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (name != null) body['name'] = name;
    if (discountType != null) body['discount_type'] = getStringFromCatalogDiscountType(discountType);
    if (percentage != null) body['percentage'] = percentage.toString();
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (pinRequired != null) body['pin_required'] = pinRequired;
    if (labelColor != null) body['label_color'] = labelColor;
    
    return body;
  }
}

class CatalogModifierList {
  final String name;
  final CatalogModifierListSelectionType selectionType;
  final List<CatalogObject> modifiers;

  CatalogModifierList({this.name, this.selectionType, this.modifiers});

  factory CatalogModifierList.fromJson(Map<String, dynamic> json) {
    return CatalogModifierList(
      name: json['name'],
      selectionType:
          getCatalogModifierListSelectionTypeFromString(json['selection_type']),
      modifiers: json['modifiers'] != null
          ? (json['modifiers'] as List)
              .map((item) => CatalogObject.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (name != null) body['name'] = name;
    if (selectionType != null) body['selection_type'] = getStringFromCatalogModifierListSelectionType(selectionType);
    if (modifiers != null) body['modifiers'] = modifiers.map((item) => item.toJson()).toList();
    
    return body;
  }
}

class CatalogModifier {
  final String name;
  final Money priceMoney;
  final bool onByDefault;
  final int ordinal;

  CatalogModifier({this.name, this.priceMoney, this.onByDefault, this.ordinal});

  factory CatalogModifier.fromJson(Map<String, dynamic> json) {
    return CatalogModifier(
      name: json['name'],
      priceMoney: Money.fromJson(json['price_money']),
      onByDefault: json['on_by_default'],
      ordinal: json['ordinal'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (name != null) body['name'] = name;
    if (priceMoney != null) body['discount_type'] = priceMoney.toJson();
    if (onByDefault != null) body['percentage'] = onByDefault;
    if (ordinal != null) body['amount_money'] = ordinal;

    return body;
  }
}

class CatalogImage {
  final String name;
  final String url;
  final String caption;

  CatalogImage({this.name, this.url, this.caption});

  factory CatalogImage.fromJson(Map<String, dynamic> json) {
    return CatalogImage(
        name: json['name'], url: json['url'], caption: json['caption']);
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (name != null) body['name'] = name;
    if (url != null) body['url'] = url;
    if (caption != null) body['caption'] = caption;
    
    return body;
  }
}

class CatalogMeasurementUnit {
  final MeasurementUnit measurementUnit;
  final int precision;

  CatalogMeasurementUnit({this.measurementUnit, this.precision});

  factory CatalogMeasurementUnit.fromJson(Map<String, dynamic> json) {
    return CatalogMeasurementUnit(
      measurementUnit: json['measurement_unit'] != null
          ? MeasurementUnit.fromJson(json['measurement_unit'])
          : null,
      precision: json['precision'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (measurementUnit != null) body['measurement_unit'] = measurementUnit.toJson();
    if (precision != null) body['precision'] = precision;
    
    return body;
  }
}

class MeasurementUnit {
  final MeasurementUnitCustom customUnit;
  final MeasurementUnitArea areaUnit;
  final MeasurementUnitLength lengthUnit;
  final MeasurementUnitVolume volumeUnit;
  final MeasurementUnitWeight weightUnit;
  final String genericUnit;

  MeasurementUnit(
      {this.customUnit,
      this.areaUnit,
      this.lengthUnit,
      this.volumeUnit,
      this.weightUnit,
      this.genericUnit});

  factory MeasurementUnit.fromJson(Map<String, dynamic> json) {
    return MeasurementUnit(
      customUnit: json['custom_unit'] != null
          ? MeasurementUnitCustom.fromJson(json['custom_unit'])
          : null,
      areaUnit: json['area_unit'] != null
          ? getMeasurementUnitAreaFromString(json['area_unit'])
          : null,
      lengthUnit: json['length_unit'] != null
          ? getMeasurementUnitLengthFromString(json['length_unit'])
          : null,
      volumeUnit: json['volume_unit'] != null
          ? getMeasurementUnitVolumeFromString(json['volume_unit'])
          : null,
      weightUnit: json['weight_unit'] != null
          ? getMeasurementUnitWeightFromString(json['weight_unit'])
          : null,
      genericUnit: json['generic_unit'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (customUnit != null) body['measurement_unit'] = customUnit.toJson();
    if (areaUnit != null) body['area_unit'] = getStringFromMeasurementUnitArea(areaUnit);
    if (lengthUnit != null) body['length_unit'] = getStringFromMeasurementUnitLength(lengthUnit);
    if (volumeUnit != null) body['volume_unit'] = getStringFromMeasurementUnitVolume(volumeUnit);
    if (weightUnit != null) body['weight_unit'] = getStringFromMeasurementUnitWeight(weightUnit);
    if (genericUnit != null) body['generic_unit'] = genericUnit;
    
    return body;
  }
}

class ItemVariationLocationOverride {
  final String locationId;
  final Money priceMoney;
  final CatalogPricingType pricingType;
  final bool trackInventory;
  final InventoryAlertType inventoryAlertType;
  final int inventoryAlertThreshold;

  ItemVariationLocationOverride(
      {this.locationId,
      this.priceMoney,
      this.pricingType,
      this.trackInventory,
      this.inventoryAlertType,
      this.inventoryAlertThreshold});

  factory ItemVariationLocationOverride.fromJson(Map<String, dynamic> json) {
    return ItemVariationLocationOverride(
      locationId: json['location_id'],
      priceMoney: Money.fromJson(json['price_money']),
      pricingType: getCatalogPricingTypeFromString(json['pricingType']),
      trackInventory: json['track_inventory'],
      inventoryAlertType:
          getInventoryAlertTypeFromString(json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'],
    );
  }
  
  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (locationId != null) body['location_id'] = locationId;
    if (priceMoney != null) body['price_money'] = priceMoney.toJson();
    if (pricingType != null) body['track_inventory'] = getStringFromCatalogPricingType(pricingType);
    if (trackInventory != null) body['track_inventory'] = trackInventory;
    if (inventoryAlertType != null) body['inventory_alert_type'] = getStringFromInventoryAlertType(inventoryAlertType);
    if (inventoryAlertThreshold != null) body['inventory_alert_threshold'] = inventoryAlertThreshold;
    
    return body;
  }
}

class CatalogItemModifierListInfo {
  final String modifierListId;
  final List<CatalogModifierOverride> modifierOverrides;
  final int minSelectedModifiers;
  final int maxSelectedModifiers;
  final bool enabled;

  CatalogItemModifierListInfo(
      {this.modifierListId,
      this.modifierOverrides,
      this.minSelectedModifiers,
      this.maxSelectedModifiers,
      this.enabled});

  factory CatalogItemModifierListInfo.fromJson(Map<String, dynamic> json) {
    return CatalogItemModifierListInfo(
      modifierListId: json['modifier_list_id'],
      minSelectedModifiers: json['min_selected_modifiers'],
      maxSelectedModifiers: json['max_selected_modifiers'],
      enabled: json['enabled'],
      modifierOverrides: json['modifier_overrides'] != null
          ? (json['modifier_overrides'] as List)
              .map((item) => CatalogModifierOverride.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (modifierListId != null) body['modifier_list_id'] = modifierListId;
    if (modifierOverrides != null) body['modifier_overrides'] = modifierOverrides.map((item) => item.toJson()).toList();
    if (minSelectedModifiers != null) body['min_selected_modifiers'] = minSelectedModifiers;
    if (maxSelectedModifiers != null) body['max_selected_modifiers'] = maxSelectedModifiers;
    if (enabled != null) body['enabled'] = enabled;
    
    return body;
  }
}

class CatalogModifierOverride {
  /// The ID of the [CatalogModifier] whose default behavior is being overridden.
  final String modifierId;

  /// If true, this [CatalogModifier] should be selected by default for this [CatalogItem].
  final bool onByDefault;

  CatalogModifierOverride({this.modifierId, this.onByDefault});

  factory CatalogModifierOverride.fromJson(Map<String, dynamic> json) {
    return CatalogModifierOverride(
      modifierId: json['modifier_id'],
      onByDefault: json['on_by_default'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (modifierId != null) body['modifier_id'] = modifierId;
    if (onByDefault!= null) body['on_by_default'] = onByDefault;
    
    return body;
  }
}

class CatalogObjectBatch {
  final List<CatalogObject> objects;

  CatalogObjectBatch({this.objects});

  factory CatalogObjectBatch.fromJson(Map<String, dynamic> json) {
    return CatalogObjectBatch(
      objects: (json['objects'] as List)
          .map((item) => CatalogObject.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (objects != null) body['objects'] = objects.map((item) => item.toJson()).toList();
    
    return body;
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

  CatalogInfoResponseLimits(
      {this.batchUpsertMaxObjectsPerBatch,
      this.batchUpsertMaxTotalObjects,
      this.batchRetrieveMaxObjectIds,
      this.searchMaxPageLimit,
      this.batchDeleteMaxObjectIds,
      this.updateItemTaxesMaxItemIds,
      this.updateItemTaxesMaxTaxesToEnable,
      this.updateItemTaxesMaxTaxesToDisable,
      this.updateItemModifierListsMaxItemIds,
      this.updateItemModifierListsMaxModifierListsToEnable,
      this.updateItemModifierListsMaxModifierListsToDisable});

  factory CatalogInfoResponseLimits.fromJson(Map<String, dynamic> json) {
    return CatalogInfoResponseLimits(
      batchUpsertMaxObjectsPerBatch: json['batch_upsert_max_objects_per_batch'],
      batchUpsertMaxTotalObjects: json['batch_upsert_max_total_objects'],
      batchRetrieveMaxObjectIds: json['batch_retrieve_max_object_ids'],
      searchMaxPageLimit: json['search_max_page_limit'],
      batchDeleteMaxObjectIds: json['batch_delete_max_object_ids'],
      updateItemTaxesMaxItemIds: json['update_item_taxes_max_item_ids'],
      updateItemTaxesMaxTaxesToEnable:
          json['update_item_taxes_max_taxes_to_enable'],
      updateItemTaxesMaxTaxesToDisable:
          json['update_item_taxes_max_taxes_to_disable'],
      updateItemModifierListsMaxItemIds:
          json['update_item_modifier_lists_max_item_ids'],
      updateItemModifierListsMaxModifierListsToEnable:
          json['update_item_modifier_lists_max_modifier_lists_to_enable'],
      updateItemModifierListsMaxModifierListsToDisable:
          json['update_item_modifier_lists_max_modifier_lists_to_disable'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if(batchUpsertMaxObjectsPerBatch != null) body['batch_upsert_max_objects_per_batch'] = batchUpsertMaxObjectsPerBatch;
    if(batchUpsertMaxTotalObjects != null) body['batch_upsert_max_total_objects'] = batchUpsertMaxTotalObjects;
    if(batchRetrieveMaxObjectIds != null) body['batch_retrieve_max_object_ids'] = batchRetrieveMaxObjectIds;
    if(searchMaxPageLimit != null) body['search_max_page_limit'] = searchMaxPageLimit;
    if(batchDeleteMaxObjectIds != null) body['batch_delete_max_object_ids'] = batchDeleteMaxObjectIds;
    if(updateItemTaxesMaxItemIds != null) body['update_item_taxes_max_item_ids'] = updateItemTaxesMaxItemIds;
    if(updateItemTaxesMaxTaxesToEnable != null) body['update_item_taxes_max_taxes_to_enable'] = updateItemTaxesMaxTaxesToEnable;
    if(updateItemTaxesMaxTaxesToDisable != null) body['update_item_taxes_max_taxes_to_disable'] = updateItemTaxesMaxTaxesToDisable;
    if(updateItemModifierListsMaxItemIds != null) body['update_item_modifier_lists_max_item_ids'] = updateItemModifierListsMaxItemIds;
    if(updateItemModifierListsMaxModifierListsToEnable != null) body['update_item_modifier_lists_max_modifier_lists_to_enable'] = updateItemModifierListsMaxModifierListsToEnable;
    if(updateItemModifierListsMaxModifierListsToDisable != null) body['update_item_modifier_lists_max_modifier_lists_to_disable'] = updateItemModifierListsMaxModifierListsToDisable;

    return body;
  }
}

class StandardUnitDescriptionGroup {
  final List<StandardUnitDescription> standardUnitDescriptions;
  final String languageCode;

  StandardUnitDescriptionGroup(
      {this.standardUnitDescriptions, this.languageCode});

  factory StandardUnitDescriptionGroup.fromJson(Map<String, dynamic> json) {
    return StandardUnitDescriptionGroup(
      standardUnitDescriptions: json['standard_unit_descriptions'] != null
          ? (json['standard_unit_descriptions'] as List)
              .map((item) => StandardUnitDescription.fromJson(item))
              .toList()
          : null,
      languageCode: json['language_code'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (standardUnitDescriptions != null) body['standard_unit_descriptions'] = standardUnitDescriptions.map((item) => item.toJson()).toList();
    if (languageCode != null) body['language_code'] = languageCode;
    
    return body;
  }
}

class StandardUnitDescription {
  final MeasurementUnit unit;
  final String name;
  final String abbreviation;

  StandardUnitDescription({this.unit, this.name, this.abbreviation});

  factory StandardUnitDescription.fromJson(Map<String, dynamic> json) {
    return StandardUnitDescription(
      unit:
          json['unit'] != null ? MeasurementUnit.fromJson(json['unit']) : null,
      name: json['name'],
      abbreviation: json['abbreviation'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (unit != null) body['unit'] = unit.toJson();
    if (name!= null) body['name'] = name;
    if (abbreviation!= null) body['abbreviation'] = abbreviation;
    
    return body;
  }
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

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (name != null) body['name'] = name;
    if (abbreviation!= null) body['abbreviation'] = abbreviation;
    
    return body;
  }
}

class CatalogIdMapping {
  final String clientObjectId;
  final String objectId;

  CatalogIdMapping({this.clientObjectId, this.objectId});

  factory CatalogIdMapping.fromJson(Map<String, dynamic> json) {
    return CatalogIdMapping(
      clientObjectId: json['client_object_id'],
      objectId: json['object_id'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();
    
    if (clientObjectId != null) body['client_object_id'] = clientObjectId;
    if (objectId!= null) body['object_id'] = objectId;
    
    return body;
  }
}
