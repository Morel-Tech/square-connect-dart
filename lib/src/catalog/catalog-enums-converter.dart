import 'package:square_connect/square_connect.dart';

const _mapStringtoCatalogObjectType = {
  'ITEM': CatalogObjectType.item,
  'ITEM_VARIATION': CatalogObjectType.itemVariation,
  'IMAGE': CatalogObjectType.image,
  'CATEGORY': CatalogObjectType.category,
  'TAX': CatalogObjectType.tax,
  'DISCOUNT': CatalogObjectType.discount,
  'MODIFIER_LIST': CatalogObjectType.modifierList,
  'MODIFIER': CatalogObjectType.modifier,
  'PRICING_RULE': CatalogObjectType.pricingRule,
  'PRODUCT_SET': CatalogObjectType.productSet,
  'TIME_PERIOD': CatalogObjectType.timePeriod,
};

CatalogObjectType getCatalogObjectTypeFromString(String input) =>
    _mapStringtoCatalogObjectType[input];
String getStringFromCatalogObjectType(CatalogObjectType input) =>
    _mapStringtoCatalogObjectType.keys
        .singleWhere((value) => _mapStringtoCatalogObjectType[value] == input);

const _mapStringtoCatalogPricingType = {
  'FIXED_PRICING': CatalogPricingType.fixedPricing,
  'VARIABLE_PRICING': CatalogPricingType.variablePricing,
};

CatalogPricingType getCatalogPricingTypeFromString(String input) =>
    _mapStringtoCatalogPricingType[input];
String getStringFromCatalogPricingType(CatalogPricingType input) =>
    _mapStringtoCatalogPricingType.keys
        .singleWhere((value) => _mapStringtoCatalogPricingType[value] == input);

const _mapStringtoInventoryAlertType = {
  'NONE': InventoryAlertType.none,
  'LOW_QUANTITY': InventoryAlertType.lowQuantity,
};

InventoryAlertType getInventoryAlertTypeFromString(String input) =>
    _mapStringtoInventoryAlertType[input];
String getStringFromInventoryAlertType(InventoryAlertType input) =>
    _mapStringtoInventoryAlertType.keys
        .singleWhere((value) => _mapStringtoInventoryAlertType[value] == input);

const _mapStringtoCatalogItemProductType = {
  'REGULAR': CatalogItemProductType.regular,
  'GIFT_CARD': CatalogItemProductType.giftCard,
  'APPOINTMENTS_SERVICE': CatalogItemProductType.appointmentsService,
  'RETAIL_ITEM': CatalogItemProductType.retailItem,
  'RESTAURANT_ITEM': CatalogItemProductType.restaurantItem,
};

CatalogItemProductType getCatalogItemProductTypeFromString(String input) =>
    _mapStringtoCatalogItemProductType[input];
String getStringFromCatalogItemProductType(CatalogItemProductType input) =>
    _mapStringtoCatalogItemProductType.keys.singleWhere(
        (value) => _mapStringtoCatalogItemProductType[value] == input);

const _mapStringtoTaxCalculationPhase = {
  'TAX_SUBTOTAL_PHASE': TaxCalculationPhase.taxSubtotalPhase,
  'TAX_TOTAL_PHASE': TaxCalculationPhase.taxTotalPhase,
};

TaxCalculationPhase getTaxCalculationPhaseFromString(String input) =>
    _mapStringtoTaxCalculationPhase[input];
String getStringFromTaxCalculationPhase(TaxCalculationPhase input) =>
    _mapStringtoTaxCalculationPhase.keys.singleWhere(
        (value) => _mapStringtoTaxCalculationPhase[value] == input);

const _mapStringtoTaxInclusionType = {
  'ADDITIVE': TaxInclusionType.additive,
  'INCLUSIVE': TaxInclusionType.inclusive,
};

TaxInclusionType getTaxInclusionTypeFromString(String input) =>
    _mapStringtoTaxInclusionType[input];
String getStringFromTaxInclusionType(TaxInclusionType input) =>
    _mapStringtoTaxInclusionType.keys
        .singleWhere((value) => _mapStringtoTaxInclusionType[value] == input);

const _mapStringtoCatalogDiscountType = {
  'FIXED_PERCENTAGE': CatalogDiscountType.fixedPercentage,
  'FIXED_AMOUNT': CatalogDiscountType.fixedAmount,
  'VARIABLE_PERCENTAGE': CatalogDiscountType.variablePercentage,
  'VARIABLE_AMOUNT': CatalogDiscountType.variableAmount,
};

CatalogDiscountType getCatalogDiscountTypeFromString(String input) =>
    _mapStringtoCatalogDiscountType[input];
String getStringFromCatalogDiscountType(CatalogDiscountType input) =>
    _mapStringtoCatalogDiscountType.keys.singleWhere(
        (value) => _mapStringtoCatalogDiscountType[value] == input);

const _mapStringtoCatalogModifierListSelectionType = {
  'SINGLE': CatalogModifierListSelectionType.single,
  'MULTIPLE': CatalogModifierListSelectionType.multiple,
};

CatalogModifierListSelectionType getCatalogModifierListSelectionTypeFromString(
        String input) =>
    _mapStringtoCatalogModifierListSelectionType[input];
String getStringFromCatalogModifierListSelectionType(
        CatalogModifierListSelectionType input) =>
    _mapStringtoCatalogModifierListSelectionType.keys.singleWhere((value) =>
        _mapStringtoCatalogModifierListSelectionType[value] == input);

const _mapStringtoMeasurementUnitArea = {
  'IMPERIAL_ACRE': MeasurementUnitArea.imperialAcre,
  'IMPERIAL_SQUARE_INCH': MeasurementUnitArea.imperialSquareInch,
  'IMPERIAL_SQUARE_FOOT': MeasurementUnitArea.imperialSquareFoot,
  'IMPERIAL_SQUARE_YARD': MeasurementUnitArea.imperialSquareYard,
  'IMPERIAL_SQUARE_MILE': MeasurementUnitArea.imperialSquareMile,
  'METRIC_SQUARE_CENTIMETER': MeasurementUnitArea.metricSquareCentimeter,
  'METRIC_SQUARE_METER': MeasurementUnitArea.metricSquareMeter,
  'METRIC_SQUARE_KILOMETER': MeasurementUnitArea.metricSquareKilometer,
};

MeasurementUnitArea getMeasurementUnitAreaFromString(String input) =>
    _mapStringtoMeasurementUnitArea[input];
String getStringFromMeasurementUnitArea(MeasurementUnitArea input) =>
    _mapStringtoMeasurementUnitArea.keys.singleWhere(
        (value) => _mapStringtoMeasurementUnitArea[value] == input);

const _mapStringtoMeasurementUnitLength = {
  'IMPERIAL_INCH': MeasurementUnitLength.imperialInch,
  'IMPERIAL_FOOT': MeasurementUnitLength.imperialFoot,
  'IMPERIAL_YARD': MeasurementUnitLength.imperialYard,
  'IMPERIAL_MILE': MeasurementUnitLength.imperialMile,
  'METRIC_MILLIMETER': MeasurementUnitLength.metricMillimeter,
  'METRIC_CENTIMETER': MeasurementUnitLength.metricCentimeter,
  'METRIC_METER': MeasurementUnitLength.metricMeter,
  'METRIC_KILOMETER': MeasurementUnitLength.metricKilometer,
};

MeasurementUnitLength getMeasurementUnitLengthFromString(String input) =>
    _mapStringtoMeasurementUnitLength[input];
String getStringFromMeasurementUnitLength(MeasurementUnitLength input) =>
    _mapStringtoMeasurementUnitLength.keys.singleWhere(
        (value) => _mapStringtoMeasurementUnitLength[value] == input);

const _mapStringtoMeasurementUnitVolume = {
  'GENERIC_FLUID_OUNCE': MeasurementUnitVolume.genericFluidOunce,
  'GENERIC_SHOT': MeasurementUnitVolume.genericShot,
  'GENERIC_CUP': MeasurementUnitVolume.genericCup,
  'GENERIC_PINT': MeasurementUnitVolume.genericPint,
  'GENERIC_QUART': MeasurementUnitVolume.genericQuart,
  'GENERIC_GALLON': MeasurementUnitVolume.genericGallon,
  'IMPERIAL_CUBIC_INCH': MeasurementUnitVolume.imperialCubicInch,
  'IMPERIAL_CUBIC_FOOT': MeasurementUnitVolume.imperialCubicFoot,
  'IMPERIAL_CUBIC_YARD': MeasurementUnitVolume.imperialCubicYard,
  'METRIC_MILLILITER': MeasurementUnitVolume.metricMilliliter,
  'METRIC_LITER': MeasurementUnitVolume.metricLiter,
};

MeasurementUnitVolume getMeasurementUnitVolumeFromString(String input) =>
    _mapStringtoMeasurementUnitVolume[input];
String getStringFromMeasurementUnitVolume(MeasurementUnitVolume input) =>
    _mapStringtoMeasurementUnitVolume.keys.singleWhere(
        (value) => _mapStringtoMeasurementUnitVolume[value] == input);

const _mapStringtoMeasurementUnitWeight = {
  'IMPERIAL_WEIGHT_OUNCE': MeasurementUnitWeight.imperialWeightOunce,
  'IMPERIAL_POUND': MeasurementUnitWeight.imperialPound,
  'IMPERIAL_STONE': MeasurementUnitWeight.imperialStone,
  'METRIC_MILLIGRAM': MeasurementUnitWeight.metricMilligram,
  'METRIC_GRAM': MeasurementUnitWeight.metricGram,
  'METRIC_KILOGRAM': MeasurementUnitWeight.metricKilogram,
};

MeasurementUnitWeight getMeasurementUnitWeightFromString(String input) =>
    _mapStringtoMeasurementUnitWeight[input];
String getStringFromMeasurementUnitWeight(MeasurementUnitWeight input) =>
    _mapStringtoMeasurementUnitWeight.keys.singleWhere(
        (value) => _mapStringtoMeasurementUnitWeight[value] == input);
