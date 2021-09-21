// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogObject _$CatalogObjectFromJson(Map<String, dynamic> json) =>
    CatalogObject(
      type: _$enumDecode(_$CatalogObjectTypeEnumMap, json['type']),
      id: json['id'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      version: json['version'] as int,
      isDeleted: json['is_deleted'] as bool,
      presentAtAllLocations: json['present_at_all_locations'] as bool,
      presentAtLocationIds: (json['present_at_location_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      absentAtLocationIds: (json['absent_at_location_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imageId: json['image_id'] as String,
      itemData: CatalogItem.fromJson(json['item_data'] as Map<String, dynamic>),
      itemVariationData: CatalogItemVariation.fromJson(
          json['item_variation_data'] as Map<String, dynamic>),
      categoryData: CatalogCategory.fromJson(
          json['category_data'] as Map<String, dynamic>),
      taxData: CatalogTax.fromJson(json['tax_data'] as Map<String, dynamic>),
      discountData: CatalogDiscount.fromJson(
          json['discount_data'] as Map<String, dynamic>),
      modifierListData: CatalogModifierList.fromJson(
          json['modifier_list_data'] as Map<String, dynamic>),
      modifierData: CatalogModifier.fromJson(
          json['modifier_data'] as Map<String, dynamic>),
      imageData:
          CatalogImage.fromJson(json['image_data'] as Map<String, dynamic>),
      measurementUnitData: CatalogMeasurementUnit.fromJson(
          json['measurement_unit_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogObjectToJson(CatalogObject instance) =>
    <String, dynamic>{
      'type': _$CatalogObjectTypeEnumMap[instance.type],
      'id': instance.id,
      'updated_at': instance.updatedAt.toIso8601String(),
      'version': instance.version,
      'is_deleted': instance.isDeleted,
      'present_at_all_locations': instance.presentAtAllLocations,
      'present_at_location_ids': instance.presentAtLocationIds,
      'absent_at_location_ids': instance.absentAtLocationIds,
      'image_id': instance.imageId,
      'item_data': instance.itemData.toJson(),
      'item_variation_data': instance.itemVariationData.toJson(),
      'category_data': instance.categoryData.toJson(),
      'tax_data': instance.taxData.toJson(),
      'discount_data': instance.discountData.toJson(),
      'modifier_list_data': instance.modifierListData.toJson(),
      'modifier_data': instance.modifierData.toJson(),
      'image_data': instance.imageData.toJson(),
      'measurement_unit_data': instance.measurementUnitData.toJson(),
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

const _$CatalogObjectTypeEnumMap = {
  CatalogObjectType.item: 'ITEM',
  CatalogObjectType.itemVariation: 'ITEM_VARIATION',
  CatalogObjectType.modifier: 'MODIFIER',
  CatalogObjectType.modifierList: 'MODIFIER_LIST',
  CatalogObjectType.category: 'CATEGORY',
  CatalogObjectType.discount: 'DISCOUNT',
  CatalogObjectType.tax: 'TAX',
  CatalogObjectType.image: 'IMAGE',
  CatalogObjectType.pricingRule: 'PRICING_RULE',
  CatalogObjectType.productSet: 'PRODUCT_SET',
  CatalogObjectType.timePeriod: 'TIME_PERIOD',
};

CatalogItem _$CatalogItemFromJson(Map<String, dynamic> json) => CatalogItem(
      name: json['name'] as String,
      description: json['description'] as String,
      abbreviation: json['abbreviation'] as String,
      labelColor: json['label_color'] as String,
      availableOnline: json['available_online'] as bool,
      availableForPickup: json['available_for_pickup'] as bool,
      availableElectronically: json['available_electronically'] as bool,
      categoryId: json['category_id'] as String,
      taxIds:
          (json['tax_ids'] as List<dynamic>).map((e) => e as String).toList(),
      modifierListInfo: (json['modifier_list_info'] as List<dynamic>)
          .map((e) =>
              CatalogItemModifierListInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      productType:
          _$enumDecode(_$CatalogItemProductTypeEnumMap, json['product_type']),
      skipModifierScreen: json['skip_modifier_screen'] as bool,
    );

Map<String, dynamic> _$CatalogItemToJson(CatalogItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'abbreviation': instance.abbreviation,
      'label_color': instance.labelColor,
      'available_online': instance.availableOnline,
      'available_for_pickup': instance.availableForPickup,
      'available_electronically': instance.availableElectronically,
      'category_id': instance.categoryId,
      'tax_ids': instance.taxIds,
      'modifier_list_info':
          instance.modifierListInfo.map((e) => e.toJson()).toList(),
      'variations': instance.variations.map((e) => e.toJson()).toList(),
      'product_type': _$CatalogItemProductTypeEnumMap[instance.productType],
      'skip_modifier_screen': instance.skipModifierScreen,
    };

const _$CatalogItemProductTypeEnumMap = {
  CatalogItemProductType.regular: 'REGULAR',
  CatalogItemProductType.giftCard: 'GIFT_CARD',
  CatalogItemProductType.appointmentsService: 'APPOINTMENTS_SERVICE',
  CatalogItemProductType.retailItem: 'RETAIL_ITEM',
  CatalogItemProductType.restaurantItem: 'RESTAURANT_ITEM',
};

CatalogItemVariation _$CatalogItemVariationFromJson(
        Map<String, dynamic> json) =>
    CatalogItemVariation(
      itemId: json['item_id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String,
      upc: json['upc'] as String,
      ordinal: json['ordinal'] as int,
      pricingType:
          _$enumDecode(_$CatalogPricingTypeEnumMap, json['pricing_type']),
      priceMoney: Money.fromJson(json['price_money'] as Map<String, dynamic>),
      locationOverrides: (json['location_overrides'] as List<dynamic>)
          .map((e) =>
              ItemVariationLocationOverride.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackInventory: json['track_inventory'] as bool,
      inventoryAlertType: _$enumDecode(
          _$InventoryAlertTypeEnumMap, json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'] as int,
      userData: json['user_data'] as String,
      serviceDuration: json['service_duration'] as int,
      catalogMeasurementUnitId: json['catalog_measurement_unit_id'] as String,
      measurementUnitId: json['measurement_unit_id'] as String,
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
      'price_money': instance.priceMoney.toJson(),
      'location_overrides':
          instance.locationOverrides.map((e) => e.toJson()).toList(),
      'track_inventory': instance.trackInventory,
      'inventory_alert_type':
          _$InventoryAlertTypeEnumMap[instance.inventoryAlertType],
      'inventory_alert_threshold': instance.inventoryAlertThreshold,
      'user_data': instance.userData,
      'service_duration': instance.serviceDuration,
      'catalog_measurement_unit_id': instance.catalogMeasurementUnitId,
      'measurement_unit_id': instance.measurementUnitId,
    };

const _$CatalogPricingTypeEnumMap = {
  CatalogPricingType.fixedPricing: 'FIXED_PRICING',
  CatalogPricingType.variablePricing: 'VARIABLE_PRICING',
};

const _$InventoryAlertTypeEnumMap = {
  InventoryAlertType.none: 'NONE',
  InventoryAlertType.lowQuantity: 'LOW_QUANTITY',
};

CatalogCategory _$CatalogCategoryFromJson(Map<String, dynamic> json) =>
    CatalogCategory(
      name: json['name'] as String,
    );

Map<String, dynamic> _$CatalogCategoryToJson(CatalogCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

CatalogTax _$CatalogTaxFromJson(Map<String, dynamic> json) => CatalogTax(
      name: json['name'] as String,
      calculationPhase:
          _$enumDecode(_$TaxCalculationPhaseEnumMap, json['calculation_phase']),
      inclusionType:
          _$enumDecode(_$TaxInclusionTypeEnumMap, json['inclusion_type']),
      percentage: (json['percentage'] as num).toDouble(),
      appliesToCustomAmounts: json['applies_to_custom_amounts'] as bool,
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$CatalogTaxToJson(CatalogTax instance) =>
    <String, dynamic>{
      'name': instance.name,
      'calculation_phase':
          _$TaxCalculationPhaseEnumMap[instance.calculationPhase],
      'inclusion_type': _$TaxInclusionTypeEnumMap[instance.inclusionType],
      'percentage': instance.percentage,
      'applies_to_custom_amounts': instance.appliesToCustomAmounts,
      'enabled': instance.enabled,
    };

const _$TaxCalculationPhaseEnumMap = {
  TaxCalculationPhase.taxSubtotalPhase: 'TAX_SUBTOTAL_PHASE',
  TaxCalculationPhase.taxTotalPhase: 'TAX_TOTAL_PHASE',
};

const _$TaxInclusionTypeEnumMap = {
  TaxInclusionType.additive: 'ADDITIVE',
  TaxInclusionType.inclusive: 'INCLUSIVE',
};

CatalogDiscount _$CatalogDiscountFromJson(Map<String, dynamic> json) =>
    CatalogDiscount(
      name: json['name'] as String,
      discountType:
          _$enumDecode(_$CatalogDiscountTypeEnumMap, json['discount_type']),
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      pinRequired: json['pin_required'] as bool,
      labelColor: json['label_color'] as String,
    );

Map<String, dynamic> _$CatalogDiscountToJson(CatalogDiscount instance) =>
    <String, dynamic>{
      'name': instance.name,
      'discount_type': _$CatalogDiscountTypeEnumMap[instance.discountType],
      'percentage': instance.percentage,
      'amount_money': instance.amountMoney.toJson(),
      'pin_required': instance.pinRequired,
      'label_color': instance.labelColor,
    };

const _$CatalogDiscountTypeEnumMap = {
  CatalogDiscountType.fixedPercentage: 'FIXED_PERCENTAGE',
  CatalogDiscountType.fixedAmount: 'FIXED_AMOUNT',
  CatalogDiscountType.variablePercentage: 'VARIABLE_PERCENTAGE',
  CatalogDiscountType.variableAmount: 'VARIABLE_AMOUNT',
};

CatalogModifierList _$CatalogModifierListFromJson(Map<String, dynamic> json) =>
    CatalogModifierList(
      name: json['name'] as String,
      selectionType: _$enumDecode(
          _$CatalogModifierListSelectionTypeEnumMap, json['selection_type']),
      modifiers: (json['modifiers'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogModifierListToJson(
        CatalogModifierList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'selection_type':
          _$CatalogModifierListSelectionTypeEnumMap[instance.selectionType],
      'modifiers': instance.modifiers.map((e) => e.toJson()).toList(),
    };

const _$CatalogModifierListSelectionTypeEnumMap = {
  CatalogModifierListSelectionType.single: 'SINGLE',
  CatalogModifierListSelectionType.multiple: 'MULTIPLE',
};

CatalogModifier _$CatalogModifierFromJson(Map<String, dynamic> json) =>
    CatalogModifier(
      name: json['name'] as String,
      priceMoney: Money.fromJson(json['price_money'] as Map<String, dynamic>),
      onByDefault: json['on_by_default'] as bool,
      ordinal: json['ordinal'] as int,
    );

Map<String, dynamic> _$CatalogModifierToJson(CatalogModifier instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price_money': instance.priceMoney.toJson(),
      'on_by_default': instance.onByDefault,
      'ordinal': instance.ordinal,
    };

CatalogImage _$CatalogImageFromJson(Map<String, dynamic> json) => CatalogImage(
      name: json['name'] as String,
      url: json['url'] as String,
      caption: json['caption'] as String,
    );

Map<String, dynamic> _$CatalogImageToJson(CatalogImage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'caption': instance.caption,
    };

CatalogMeasurementUnit _$CatalogMeasurementUnitFromJson(
        Map<String, dynamic> json) =>
    CatalogMeasurementUnit(
      measurementUnit: MeasurementUnit.fromJson(
          json['measurement_unit'] as Map<String, dynamic>),
      precision: json['precision'] as int,
    );

Map<String, dynamic> _$CatalogMeasurementUnitToJson(
        CatalogMeasurementUnit instance) =>
    <String, dynamic>{
      'measurement_unit': instance.measurementUnit.toJson(),
      'precision': instance.precision,
    };

MeasurementUnit _$MeasurementUnitFromJson(Map<String, dynamic> json) =>
    MeasurementUnit(
      customUnit: MeasurementUnitCustom.fromJson(
          json['custom_unit'] as Map<String, dynamic>),
      areaUnit: _$enumDecode(_$MeasurementUnitAreaEnumMap, json['area_unit']),
      lengthUnit:
          _$enumDecode(_$MeasurementUnitLengthEnumMap, json['length_unit']),
      volumeUnit:
          _$enumDecode(_$MeasurementUnitVolumeEnumMap, json['volume_unit']),
      weightUnit:
          _$enumDecode(_$MeasurementUnitWeightEnumMap, json['weight_unit']),
      genericUnit: json['generic_unit'] as String,
    );

Map<String, dynamic> _$MeasurementUnitToJson(MeasurementUnit instance) =>
    <String, dynamic>{
      'custom_unit': instance.customUnit.toJson(),
      'area_unit': _$MeasurementUnitAreaEnumMap[instance.areaUnit],
      'length_unit': _$MeasurementUnitLengthEnumMap[instance.lengthUnit],
      'volume_unit': _$MeasurementUnitVolumeEnumMap[instance.volumeUnit],
      'weight_unit': _$MeasurementUnitWeightEnumMap[instance.weightUnit],
      'generic_unit': instance.genericUnit,
    };

const _$MeasurementUnitAreaEnumMap = {
  MeasurementUnitArea.imperialAcre: 'IMPERIAL_ACRE',
  MeasurementUnitArea.imperialSquareInch: 'IMPERIAL_SQUARE_INCH',
  MeasurementUnitArea.imperialSquareFoot: 'IMPERIAL_SQUARE_FOOT',
  MeasurementUnitArea.imperialSquareYard: 'IMPERIAL_SQUARE_YARD',
  MeasurementUnitArea.imperialSquareMile: 'IMPERIAL_SQUARE_MILE',
  MeasurementUnitArea.metricSquareCentimeter: 'METRIC_SQUARE_CENTIMETER',
  MeasurementUnitArea.metricSquareMeter: 'METRIC_SQUARE_METER',
  MeasurementUnitArea.metricSquareKilometer: 'METRIC_SQUARE_KILOMETER',
};

const _$MeasurementUnitLengthEnumMap = {
  MeasurementUnitLength.imperialInch: 'IMPERIAL_INCH',
  MeasurementUnitLength.imperialFoot: 'IMPERIAL_FOOT',
  MeasurementUnitLength.imperialYard: 'IMPERIAL_YARD',
  MeasurementUnitLength.imperialMile: 'IMPERIAL_MILE',
  MeasurementUnitLength.metricMillimeter: 'METRIC_MILLIMETER',
  MeasurementUnitLength.metricCentimeter: 'METRIC_CENTIMETER',
  MeasurementUnitLength.metricMeter: 'METRIC_METER',
  MeasurementUnitLength.metricKilometer: 'METRIC_KILOMETER',
};

const _$MeasurementUnitVolumeEnumMap = {
  MeasurementUnitVolume.genericFluidOunce: 'GENERIC_FLUID_OUNCE',
  MeasurementUnitVolume.genericShot: 'GENERIC_SHOT',
  MeasurementUnitVolume.genericCup: 'GENERIC_CUP',
  MeasurementUnitVolume.genericPint: 'GENERIC_PINT',
  MeasurementUnitVolume.genericQuart: 'GENERIC_QUART',
  MeasurementUnitVolume.genericGallon: 'GENERIC_GALLON',
  MeasurementUnitVolume.imperialCubicInch: 'IMPERIAL_CUBIC_INCH',
  MeasurementUnitVolume.imperialCubicFoot: 'IMPERIAL_CUBIC_FOOT',
  MeasurementUnitVolume.imperialCubicYard: 'IMPERIAL_CUBIC_YARD',
  MeasurementUnitVolume.metricMilliliter: 'METRIC_MILLILITER',
  MeasurementUnitVolume.metricLiter: 'METRIC_LITER',
};

const _$MeasurementUnitWeightEnumMap = {
  MeasurementUnitWeight.imperialWeightOunce: 'IMPERIAL_WEIGHT_OUNCE',
  MeasurementUnitWeight.imperialPound: 'IMPERIAL_POUND',
  MeasurementUnitWeight.imperialStone: 'IMPERIAL_STONE',
  MeasurementUnitWeight.metricMilligram: 'METRIC_MILLIGRAM',
  MeasurementUnitWeight.metricGram: 'METRIC_GRAM',
  MeasurementUnitWeight.metricKilogram: 'METRIC_KILOGRAM',
};

ItemVariationLocationOverride _$ItemVariationLocationOverrideFromJson(
        Map<String, dynamic> json) =>
    ItemVariationLocationOverride(
      locationId: json['location_id'] as String,
      priceMoney: Money.fromJson(json['price_money'] as Map<String, dynamic>),
      pricingType:
          _$enumDecode(_$CatalogPricingTypeEnumMap, json['pricing_type']),
      trackInventory: json['track_inventory'] as bool,
      inventoryAlertType: _$enumDecode(
          _$InventoryAlertTypeEnumMap, json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'] as int,
    );

Map<String, dynamic> _$ItemVariationLocationOverrideToJson(
        ItemVariationLocationOverride instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'price_money': instance.priceMoney.toJson(),
      'pricing_type': _$CatalogPricingTypeEnumMap[instance.pricingType],
      'track_inventory': instance.trackInventory,
      'inventory_alert_type':
          _$InventoryAlertTypeEnumMap[instance.inventoryAlertType],
      'inventory_alert_threshold': instance.inventoryAlertThreshold,
    };

CatalogItemModifierListInfo _$CatalogItemModifierListInfoFromJson(
        Map<String, dynamic> json) =>
    CatalogItemModifierListInfo(
      modifierListId: json['modifier_list_id'] as String,
      modifierOverrides: (json['modifier_overrides'] as List<dynamic>)
          .map((e) =>
              CatalogModifierOverride.fromJson(e as Map<String, dynamic>))
          .toList(),
      minSelectedModifiers: json['min_selected_modifiers'] as int,
      maxSelectedModifiers: json['max_selected_modifiers'] as int,
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$CatalogItemModifierListInfoToJson(
        CatalogItemModifierListInfo instance) =>
    <String, dynamic>{
      'modifier_list_id': instance.modifierListId,
      'modifier_overrides':
          instance.modifierOverrides.map((e) => e.toJson()).toList(),
      'min_selected_modifiers': instance.minSelectedModifiers,
      'max_selected_modifiers': instance.maxSelectedModifiers,
      'enabled': instance.enabled,
    };

CatalogModifierOverride _$CatalogModifierOverrideFromJson(
        Map<String, dynamic> json) =>
    CatalogModifierOverride(
      modifierId: json['modifier_id'] as String,
      onByDefault: json['on_by_default'] as bool,
    );

Map<String, dynamic> _$CatalogModifierOverrideToJson(
        CatalogModifierOverride instance) =>
    <String, dynamic>{
      'modifier_id': instance.modifierId,
      'on_by_default': instance.onByDefault,
    };

CatalogObjectBatch _$CatalogObjectBatchFromJson(Map<String, dynamic> json) =>
    CatalogObjectBatch(
      objects: (json['objects'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogObjectBatchToJson(CatalogObjectBatch instance) =>
    <String, dynamic>{
      'objects': instance.objects.map((e) => e.toJson()).toList(),
    };

CatalogInfoResponseLimits _$CatalogInfoResponseLimitsFromJson(
        Map<String, dynamic> json) =>
    CatalogInfoResponseLimits(
      batchUpsertMaxObjectsPerBatch:
          json['batch_upsert_max_objects_per_batch'] as int,
      batchUpsertMaxTotalObjects: json['batch_upsert_max_total_objects'] as int,
      batchRetrieveMaxObjectIds: json['batch_retrieve_max_object_ids'] as int,
      searchMaxPageLimit: json['search_max_page_limit'] as int,
      batchDeleteMaxObjectIds: json['batch_delete_max_object_ids'] as int,
      updateItemTaxesMaxItemIds: json['update_item_taxes_max_item_ids'] as int,
      updateItemTaxesMaxTaxesToEnable:
          json['update_item_taxes_max_taxes_to_enable'] as int,
      updateItemTaxesMaxTaxesToDisable:
          json['update_item_taxes_max_taxes_to_disable'] as int,
      updateItemModifierListsMaxItemIds:
          json['update_item_modifier_lists_max_item_ids'] as int,
      updateItemModifierListsMaxModifierListsToEnable:
          json['update_item_modifier_lists_max_modifier_lists_to_enable']
              as int,
      updateItemModifierListsMaxModifierListsToDisable:
          json['update_item_modifier_lists_max_modifier_lists_to_disable']
              as int,
    );

Map<String, dynamic> _$CatalogInfoResponseLimitsToJson(
        CatalogInfoResponseLimits instance) =>
    <String, dynamic>{
      'batch_upsert_max_objects_per_batch':
          instance.batchUpsertMaxObjectsPerBatch,
      'batch_upsert_max_total_objects': instance.batchUpsertMaxTotalObjects,
      'batch_retrieve_max_object_ids': instance.batchRetrieveMaxObjectIds,
      'search_max_page_limit': instance.searchMaxPageLimit,
      'batch_delete_max_object_ids': instance.batchDeleteMaxObjectIds,
      'update_item_taxes_max_item_ids': instance.updateItemTaxesMaxItemIds,
      'update_item_taxes_max_taxes_to_enable':
          instance.updateItemTaxesMaxTaxesToEnable,
      'update_item_taxes_max_taxes_to_disable':
          instance.updateItemTaxesMaxTaxesToDisable,
      'update_item_modifier_lists_max_item_ids':
          instance.updateItemModifierListsMaxItemIds,
      'update_item_modifier_lists_max_modifier_lists_to_enable':
          instance.updateItemModifierListsMaxModifierListsToEnable,
      'update_item_modifier_lists_max_modifier_lists_to_disable':
          instance.updateItemModifierListsMaxModifierListsToDisable,
    };

StandardUnitDescriptionGroup _$StandardUnitDescriptionGroupFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescriptionGroup(
      standardUnitDescriptions:
          (json['standard_unit_descriptions'] as List<dynamic>)
              .map((e) =>
                  StandardUnitDescription.fromJson(e as Map<String, dynamic>))
              .toList(),
      languageCode: json['language_code'] as String,
    );

Map<String, dynamic> _$StandardUnitDescriptionGroupToJson(
        StandardUnitDescriptionGroup instance) =>
    <String, dynamic>{
      'standard_unit_descriptions':
          instance.standardUnitDescriptions.map((e) => e.toJson()).toList(),
      'language_code': instance.languageCode,
    };

StandardUnitDescription _$StandardUnitDescriptionFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescription(
      unit: MeasurementUnit.fromJson(json['unit'] as Map<String, dynamic>),
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
    );

Map<String, dynamic> _$StandardUnitDescriptionToJson(
        StandardUnitDescription instance) =>
    <String, dynamic>{
      'unit': instance.unit.toJson(),
      'name': instance.name,
      'abbreviation': instance.abbreviation,
    };

MeasurementUnitCustom _$MeasurementUnitCustomFromJson(
        Map<String, dynamic> json) =>
    MeasurementUnitCustom(
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
    );

Map<String, dynamic> _$MeasurementUnitCustomToJson(
        MeasurementUnitCustom instance) =>
    <String, dynamic>{
      'name': instance.name,
      'abbreviation': instance.abbreviation,
    };

CatalogIdMapping _$CatalogIdMappingFromJson(Map<String, dynamic> json) =>
    CatalogIdMapping(
      clientObjectId: json['client_object_id'] as String,
      objectId: json['object_id'] as String,
    );

Map<String, dynamic> _$CatalogIdMappingToJson(CatalogIdMapping instance) =>
    <String, dynamic>{
      'client_object_id': instance.clientObjectId,
      'object_id': instance.objectId,
    };
