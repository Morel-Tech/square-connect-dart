// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogObject _$CatalogObjectFromJson(Map<String, dynamic> json) =>
    CatalogObject(
      type: _$enumDecode(_$CatalogObjectTypeEnumMap, json['type']),
      id: json['id'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      version: json['version'] as int,
      isDeleted: json['isDeleted'] as bool,
      presentAtAllLocations: json['presentAtAllLocations'] as bool,
      presentAtLocationIds: (json['presentAtLocationIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      absentAtLocationIds: (json['absentAtLocationIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imageId: json['imageId'] as String,
      itemData: CatalogItem.fromJson(json['itemData'] as Map<String, dynamic>),
      itemVariationData: CatalogItemVariation.fromJson(
          json['itemVariationData'] as Map<String, dynamic>),
      categoryData: CatalogCategory.fromJson(
          json['categoryData'] as Map<String, dynamic>),
      taxData: CatalogTax.fromJson(json['taxData'] as Map<String, dynamic>),
      discountData: CatalogDiscount.fromJson(
          json['discountData'] as Map<String, dynamic>),
      modifierListData: CatalogModifierList.fromJson(
          json['modifierListData'] as Map<String, dynamic>),
      modifierData: CatalogModifier.fromJson(
          json['modifierData'] as Map<String, dynamic>),
      imageData:
          CatalogImage.fromJson(json['imageData'] as Map<String, dynamic>),
      measurementUnitData: CatalogMeasurementUnit.fromJson(
          json['measurementUnitData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogObjectToJson(CatalogObject instance) =>
    <String, dynamic>{
      'type': _$CatalogObjectTypeEnumMap[instance.type],
      'id': instance.id,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'version': instance.version,
      'isDeleted': instance.isDeleted,
      'presentAtAllLocations': instance.presentAtAllLocations,
      'presentAtLocationIds': instance.presentAtLocationIds,
      'absentAtLocationIds': instance.absentAtLocationIds,
      'imageId': instance.imageId,
      'itemData': instance.itemData,
      'itemVariationData': instance.itemVariationData,
      'categoryData': instance.categoryData,
      'taxData': instance.taxData,
      'discountData': instance.discountData,
      'modifierListData': instance.modifierListData,
      'modifierData': instance.modifierData,
      'imageData': instance.imageData,
      'measurementUnitData': instance.measurementUnitData,
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
      labelColor: json['labelColor'] as String,
      availableOnline: json['availableOnline'] as bool,
      availableForPickup: json['availableForPickup'] as bool,
      availableElectronically: json['availableElectronically'] as bool,
      categoryId: json['categoryId'] as String,
      taxIds:
          (json['taxIds'] as List<dynamic>).map((e) => e as String).toList(),
      modifierListInfo: (json['modifierListInfo'] as List<dynamic>)
          .map((e) =>
              CatalogItemModifierListInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      productType:
          _$enumDecode(_$CatalogItemProductTypeEnumMap, json['productType']),
      skipModifierScreen: json['skipModifierScreen'] as bool,
    );

Map<String, dynamic> _$CatalogItemToJson(CatalogItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'abbreviation': instance.abbreviation,
      'labelColor': instance.labelColor,
      'availableOnline': instance.availableOnline,
      'availableForPickup': instance.availableForPickup,
      'availableElectronically': instance.availableElectronically,
      'categoryId': instance.categoryId,
      'taxIds': instance.taxIds,
      'modifierListInfo': instance.modifierListInfo,
      'variations': instance.variations,
      'productType': _$CatalogItemProductTypeEnumMap[instance.productType],
      'skipModifierScreen': instance.skipModifierScreen,
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
      itemId: json['itemId'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String,
      upc: json['upc'] as String,
      ordinal: json['ordinal'] as int,
      pricingType:
          _$enumDecode(_$CatalogPricingTypeEnumMap, json['pricingType']),
      priceMoney: Money.fromJson(json['priceMoney'] as Map<String, dynamic>),
      locationOverrides: (json['locationOverrides'] as List<dynamic>)
          .map((e) =>
              ItemVariationLocationOverride.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackInventory: json['trackInventory'] as bool,
      inventoryAlertType:
          _$enumDecode(_$InventoryAlertTypeEnumMap, json['inventoryAlertType']),
      inventoryAlertThreshold: json['inventoryAlertThreshold'] as int,
      userData: json['userData'] as String,
      serviceDuration: json['serviceDuration'] as int,
      catalogMeasurementUnitId: json['catalogMeasurementUnitId'] as String,
      measurementUnitId: json['measurementUnitId'] as String,
    );

Map<String, dynamic> _$CatalogItemVariationToJson(
        CatalogItemVariation instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'sku': instance.sku,
      'upc': instance.upc,
      'ordinal': instance.ordinal,
      'pricingType': _$CatalogPricingTypeEnumMap[instance.pricingType],
      'priceMoney': instance.priceMoney,
      'locationOverrides': instance.locationOverrides,
      'trackInventory': instance.trackInventory,
      'inventoryAlertType':
          _$InventoryAlertTypeEnumMap[instance.inventoryAlertType],
      'inventoryAlertThreshold': instance.inventoryAlertThreshold,
      'userData': instance.userData,
      'serviceDuration': instance.serviceDuration,
      'catalogMeasurementUnitId': instance.catalogMeasurementUnitId,
      'measurementUnitId': instance.measurementUnitId,
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
          _$enumDecode(_$TaxCalculationPhaseEnumMap, json['calculationPhase']),
      inclusionType:
          _$enumDecode(_$TaxInclusionTypeEnumMap, json['inclusionType']),
      percentage: (json['percentage'] as num).toDouble(),
      appliesToCustomAmounts: json['appliesToCustomAmounts'] as bool,
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$CatalogTaxToJson(CatalogTax instance) =>
    <String, dynamic>{
      'name': instance.name,
      'calculationPhase':
          _$TaxCalculationPhaseEnumMap[instance.calculationPhase],
      'inclusionType': _$TaxInclusionTypeEnumMap[instance.inclusionType],
      'percentage': instance.percentage,
      'appliesToCustomAmounts': instance.appliesToCustomAmounts,
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
          _$enumDecode(_$CatalogDiscountTypeEnumMap, json['discountType']),
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      pinRequired: json['pinRequired'] as bool,
      labelColor: json['labelColor'] as String,
    );

Map<String, dynamic> _$CatalogDiscountToJson(CatalogDiscount instance) =>
    <String, dynamic>{
      'name': instance.name,
      'discountType': _$CatalogDiscountTypeEnumMap[instance.discountType],
      'percentage': instance.percentage,
      'amountMoney': instance.amountMoney,
      'pinRequired': instance.pinRequired,
      'labelColor': instance.labelColor,
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
          _$CatalogModifierListSelectionTypeEnumMap, json['selectionType']),
      modifiers: (json['modifiers'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogModifierListToJson(
        CatalogModifierList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'selectionType':
          _$CatalogModifierListSelectionTypeEnumMap[instance.selectionType],
      'modifiers': instance.modifiers,
    };

const _$CatalogModifierListSelectionTypeEnumMap = {
  CatalogModifierListSelectionType.single: 'SINGLE',
  CatalogModifierListSelectionType.multiple: 'MULTIPLE',
};

CatalogModifier _$CatalogModifierFromJson(Map<String, dynamic> json) =>
    CatalogModifier(
      name: json['name'] as String,
      priceMoney: Money.fromJson(json['priceMoney'] as Map<String, dynamic>),
      onByDefault: json['onByDefault'] as bool,
      ordinal: json['ordinal'] as int,
    );

Map<String, dynamic> _$CatalogModifierToJson(CatalogModifier instance) =>
    <String, dynamic>{
      'name': instance.name,
      'priceMoney': instance.priceMoney,
      'onByDefault': instance.onByDefault,
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
          json['measurementUnit'] as Map<String, dynamic>),
      precision: json['precision'] as int,
    );

Map<String, dynamic> _$CatalogMeasurementUnitToJson(
        CatalogMeasurementUnit instance) =>
    <String, dynamic>{
      'measurementUnit': instance.measurementUnit,
      'precision': instance.precision,
    };

MeasurementUnit _$MeasurementUnitFromJson(Map<String, dynamic> json) =>
    MeasurementUnit(
      customUnit: MeasurementUnitCustom.fromJson(
          json['customUnit'] as Map<String, dynamic>),
      areaUnit: _$enumDecode(_$MeasurementUnitAreaEnumMap, json['areaUnit']),
      lengthUnit:
          _$enumDecode(_$MeasurementUnitLengthEnumMap, json['lengthUnit']),
      volumeUnit:
          _$enumDecode(_$MeasurementUnitVolumeEnumMap, json['volumeUnit']),
      weightUnit:
          _$enumDecode(_$MeasurementUnitWeightEnumMap, json['weightUnit']),
      genericUnit: json['genericUnit'] as String,
    );

Map<String, dynamic> _$MeasurementUnitToJson(MeasurementUnit instance) =>
    <String, dynamic>{
      'customUnit': instance.customUnit,
      'areaUnit': _$MeasurementUnitAreaEnumMap[instance.areaUnit],
      'lengthUnit': _$MeasurementUnitLengthEnumMap[instance.lengthUnit],
      'volumeUnit': _$MeasurementUnitVolumeEnumMap[instance.volumeUnit],
      'weightUnit': _$MeasurementUnitWeightEnumMap[instance.weightUnit],
      'genericUnit': instance.genericUnit,
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
      locationId: json['locationId'] as String,
      priceMoney: Money.fromJson(json['priceMoney'] as Map<String, dynamic>),
      pricingType:
          _$enumDecode(_$CatalogPricingTypeEnumMap, json['pricingType']),
      trackInventory: json['trackInventory'] as bool,
      inventoryAlertType:
          _$enumDecode(_$InventoryAlertTypeEnumMap, json['inventoryAlertType']),
      inventoryAlertThreshold: json['inventoryAlertThreshold'] as int,
    );

Map<String, dynamic> _$ItemVariationLocationOverrideToJson(
        ItemVariationLocationOverride instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'priceMoney': instance.priceMoney,
      'pricingType': _$CatalogPricingTypeEnumMap[instance.pricingType],
      'trackInventory': instance.trackInventory,
      'inventoryAlertType':
          _$InventoryAlertTypeEnumMap[instance.inventoryAlertType],
      'inventoryAlertThreshold': instance.inventoryAlertThreshold,
    };

CatalogItemModifierListInfo _$CatalogItemModifierListInfoFromJson(
        Map<String, dynamic> json) =>
    CatalogItemModifierListInfo(
      modifierListId: json['modifierListId'] as String,
      modifierOverrides: (json['modifierOverrides'] as List<dynamic>)
          .map((e) =>
              CatalogModifierOverride.fromJson(e as Map<String, dynamic>))
          .toList(),
      minSelectedModifiers: json['minSelectedModifiers'] as int,
      maxSelectedModifiers: json['maxSelectedModifiers'] as int,
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$CatalogItemModifierListInfoToJson(
        CatalogItemModifierListInfo instance) =>
    <String, dynamic>{
      'modifierListId': instance.modifierListId,
      'modifierOverrides': instance.modifierOverrides,
      'minSelectedModifiers': instance.minSelectedModifiers,
      'maxSelectedModifiers': instance.maxSelectedModifiers,
      'enabled': instance.enabled,
    };

CatalogModifierOverride _$CatalogModifierOverrideFromJson(
        Map<String, dynamic> json) =>
    CatalogModifierOverride(
      modifierId: json['modifierId'] as String,
      onByDefault: json['onByDefault'] as bool,
    );

Map<String, dynamic> _$CatalogModifierOverrideToJson(
        CatalogModifierOverride instance) =>
    <String, dynamic>{
      'modifierId': instance.modifierId,
      'onByDefault': instance.onByDefault,
    };

CatalogObjectBatch _$CatalogObjectBatchFromJson(Map<String, dynamic> json) =>
    CatalogObjectBatch(
      objects: (json['objects'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogObjectBatchToJson(CatalogObjectBatch instance) =>
    <String, dynamic>{
      'objects': instance.objects,
    };

CatalogInfoResponseLimits _$CatalogInfoResponseLimitsFromJson(
        Map<String, dynamic> json) =>
    CatalogInfoResponseLimits(
      batchUpsertMaxObjectsPerBatch:
          json['batchUpsertMaxObjectsPerBatch'] as int,
      batchUpsertMaxTotalObjects: json['batchUpsertMaxTotalObjects'] as int,
      batchRetrieveMaxObjectIds: json['batchRetrieveMaxObjectIds'] as int,
      searchMaxPageLimit: json['searchMaxPageLimit'] as int,
      batchDeleteMaxObjectIds: json['batchDeleteMaxObjectIds'] as int,
      updateItemTaxesMaxItemIds: json['updateItemTaxesMaxItemIds'] as int,
      updateItemTaxesMaxTaxesToEnable:
          json['updateItemTaxesMaxTaxesToEnable'] as int,
      updateItemTaxesMaxTaxesToDisable:
          json['updateItemTaxesMaxTaxesToDisable'] as int,
      updateItemModifierListsMaxItemIds:
          json['updateItemModifierListsMaxItemIds'] as int,
      updateItemModifierListsMaxModifierListsToEnable:
          json['updateItemModifierListsMaxModifierListsToEnable'] as int,
      updateItemModifierListsMaxModifierListsToDisable:
          json['updateItemModifierListsMaxModifierListsToDisable'] as int,
    );

Map<String, dynamic> _$CatalogInfoResponseLimitsToJson(
        CatalogInfoResponseLimits instance) =>
    <String, dynamic>{
      'batchUpsertMaxObjectsPerBatch': instance.batchUpsertMaxObjectsPerBatch,
      'batchUpsertMaxTotalObjects': instance.batchUpsertMaxTotalObjects,
      'batchRetrieveMaxObjectIds': instance.batchRetrieveMaxObjectIds,
      'searchMaxPageLimit': instance.searchMaxPageLimit,
      'batchDeleteMaxObjectIds': instance.batchDeleteMaxObjectIds,
      'updateItemTaxesMaxItemIds': instance.updateItemTaxesMaxItemIds,
      'updateItemTaxesMaxTaxesToEnable':
          instance.updateItemTaxesMaxTaxesToEnable,
      'updateItemTaxesMaxTaxesToDisable':
          instance.updateItemTaxesMaxTaxesToDisable,
      'updateItemModifierListsMaxItemIds':
          instance.updateItemModifierListsMaxItemIds,
      'updateItemModifierListsMaxModifierListsToEnable':
          instance.updateItemModifierListsMaxModifierListsToEnable,
      'updateItemModifierListsMaxModifierListsToDisable':
          instance.updateItemModifierListsMaxModifierListsToDisable,
    };

StandardUnitDescriptionGroup _$StandardUnitDescriptionGroupFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescriptionGroup(
      standardUnitDescriptions:
          (json['standardUnitDescriptions'] as List<dynamic>)
              .map((e) =>
                  StandardUnitDescription.fromJson(e as Map<String, dynamic>))
              .toList(),
      languageCode: json['languageCode'] as String,
    );

Map<String, dynamic> _$StandardUnitDescriptionGroupToJson(
        StandardUnitDescriptionGroup instance) =>
    <String, dynamic>{
      'standardUnitDescriptions': instance.standardUnitDescriptions,
      'languageCode': instance.languageCode,
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
      'unit': instance.unit,
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
      clientObjectId: json['clientObjectId'] as String,
      objectId: json['objectId'] as String,
    );

Map<String, dynamic> _$CatalogIdMappingToJson(CatalogIdMapping instance) =>
    <String, dynamic>{
      'clientObjectId': instance.clientObjectId,
      'objectId': instance.objectId,
    };
