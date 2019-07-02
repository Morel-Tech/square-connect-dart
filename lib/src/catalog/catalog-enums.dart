enum CatalogObjectType {
  item,
  itemVariation,
  modifier,
  modifierList,
  category,
  discount,
  tax,
  image,
  pricingRule,
  productSet,
  timePeriod,
}

const catalogObjectTypeMappingStringToItem = {
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

String getCatalogObjectStringFromType(CatalogObjectType type) {
  return catalogObjectTypeMappingStringToItem.keys.firstWhere(
    (k) => catalogObjectTypeMappingStringToItem[k] == type, orElse: () {
      throw ArgumentError.value(type, 'type', 'Input must be a valid CatalogObjectType');
    });
}

CatalogObjectType getCatalogObjectTypeFromString(String input) {
  switch (input) {
    case 'ITEM':
      return CatalogObjectType.item;
    case 'ITEM_VARIATION':
      return CatalogObjectType.itemVariation;
    case 'IMAGE':
      return CatalogObjectType.image;
    case 'CATEGORY':
      return CatalogObjectType.category;
    case 'TAX':
      return CatalogObjectType.tax;
    case 'DISCOUNT':
      return CatalogObjectType.discount;
    case 'MODIFIER_LIST':
      return CatalogObjectType.modifierList;
    case 'MODIFIER':
      return CatalogObjectType.modifier;
    case 'PRICING_RULE':
      return CatalogObjectType.pricingRule;
    case 'PRODUCT_SET':
      return CatalogObjectType.productSet;
    case 'TIME_PERIOD':
      return CatalogObjectType.timePeriod;
    default:
      throw ArgumentError.value(input, 'input', 'Input must be a valid CatalogObjectType in SCREAMING_UPPERCASE');
  }
}

enum CatalogPricingType {
  fixedPricing,
  variablePricing,
}

CatalogPricingType getCatalogPricingTypeFromString(String input) {
  switch (input) {
    case 'FIXED_PRICING':
      return CatalogPricingType.fixedPricing;
    case 'VARIABLE_PRICING':
      return CatalogPricingType.variablePricing;
    default:
      throw ArgumentError.value(input, 'input', 'Input must be a valid CatalogPricingType in SCREAMING_UPPERCASE');
  }
}

enum InventoryAlertType {
  none,
  lowQuantity,
}

InventoryAlertType getInventoryAlertTypeFromString(String input) {
  switch (input) {
    case 'NONE':
      return InventoryAlertType.none;
    case 'LOW_QUANTITY':
      return InventoryAlertType.lowQuantity;
    default:
      throw ArgumentError.value(input, 'input', 'Input must be a valid InventoryAlertType in SCREAMING_UPPERCASE');
  }
}

enum CatalogItemProductType {
  regular,
  giftCard,
  appointmentsService,
  retailItem,
  restaurantItem,
}

CatalogItemProductType getCatalogItemProductTypeFromString(String input) {
  switch (input) {
    case 'REGULAR':
      return CatalogItemProductType.regular;
    case 'GIFT_CARD':
      return CatalogItemProductType.giftCard;
    case 'APPOINTMENTS_SERVICE':
      return CatalogItemProductType.appointmentsService;
    case 'RETAIL_ITEM':
      return CatalogItemProductType.retailItem;
    case 'RESTAURANT_ITEM':
      return CatalogItemProductType.restaurantItem;
    default:
      throw ArgumentError.value(input, 'input', 'Input must be a valid CatalogItemProductType in SCREAMING_UPPERCASE');
  }
}

enum TaxCalculationPhase {
  taxSubtotalPhase,
  taxTotalPhase,
}

TaxCalculationPhase getTaxCalculationPhaseFromString(String input) {
  switch (input) {
    case 'TAX_SUBTOTAL_PHASE':
      return TaxCalculationPhase.taxSubtotalPhase;
    case 'TAX_TOTAL_PHASE':
      return TaxCalculationPhase.taxTotalPhase;
    default:
      throw ArgumentError.value(input, 'input', 'Input must be a valid TaxCalculationPhase in SCREAMING_UPPERCASE');
  }
}

enum TaxInclusionType {
  additive,
  inclusive,
}

TaxInclusionType getTaxInclusionTypeFromString(String input) {
  switch (input) {
    case 'ADDITIVE':
      return TaxInclusionType.additive;
    case 'INCLUSIVE':
      return TaxInclusionType.inclusive;
    default:
      throw ArgumentError.value(input, 'input', 'Input must be a valid TaxInclusionType in SCREAMING_UPPERCASE');
  }
}

enum CatalogDiscountType {
  fixedPercentage,
  fixedAmount,
  variablePercentage,
  variableAmount,
}

CatalogDiscountType getCatalogDiscountTypeFromString(String input) {
  switch (input) {
    case 'FIXED_PERCENTAGE':
      return CatalogDiscountType.fixedPercentage;
    case 'FIXED_AMOUNT':
      return CatalogDiscountType.fixedAmount;
    case 'VARIABLE_PERCENTAGE':
      return CatalogDiscountType.variablePercentage;
    case 'VARIABLE_AMOUNT':
      return CatalogDiscountType.variableAmount;
    default:
      throw ArgumentError.value(input, 'input', 'Input must be a valid CatalogDiscountType in SCREAMING_UPPERCASE');
  }
}

enum CatalogModifierListSelectionType {
  single,
  multiple,
}

CatalogModifierListSelectionType getCatalogModifierListSelectionTypeFromString(String input) {
  switch (input) {
    case 'SINGLE':
      return CatalogModifierListSelectionType.single;
    case 'MULTIPLE':
      return CatalogModifierListSelectionType.multiple;
    default:
      throw ArgumentError.value(input, 'input', 'Input must be a valid CatalogModifierListSelectionType in SCREAMING_UPPERCASE');
  }
}

enum MeasurementUnitArea {
  imperialAcre,
  imperialSquareInch,
  imperialSquareFoot,
  imperialSquareYard,
  imperialSquareMile,
  metricSquareCentimeter,
  metricSquareMeter,
  metricSquareKilometer,
}

var stringToMeasurementUnitArea = {
  'IMPERIAL_ACRE': MeasurementUnitArea.imperialAcre,
  'IMPERIAL_SQUARE_INCH': MeasurementUnitArea.imperialSquareInch,
  'IMPERIAL_SQUARE_FOOT': MeasurementUnitArea.imperialSquareFoot,
  'IMPERIAL_SQUARE_YARD': MeasurementUnitArea.imperialSquareYard,
  'IMPERIAL_SQUARE_MILE': MeasurementUnitArea.imperialSquareMile,
  'METRIC_SQUARE_CENTIMETER': MeasurementUnitArea.metricSquareCentimeter,
  'METRIC_SQUARE_METER': MeasurementUnitArea.metricSquareMeter,
  'METRIC_SQUARE_KILOMETER': MeasurementUnitArea.metricSquareKilometer,
};

MeasurementUnitArea getMeasurementUnitAreaFromString(String input) {
  var ans = stringToMeasurementUnitArea[input];
  if (ans == null) throw ArgumentError.value(input, 'input', 'Input must be a valid MeasurementUnitArea in SCREAMING_UPPERCASE');
  return ans;
}

enum MeasurementUnitLength{
  imperialInch,
  imperialFoot,
  imperialYard,
  imperialMile,
  metricMillimeter,
  metricCentimeter,
  metricMeter,
  metricKilometer,
}

var stringToMeasurementUnitLength = {
  'IMPERIAL_INCH': MeasurementUnitLength.imperialInch,
  'IMPERIAL_FOOT': MeasurementUnitLength.imperialFoot,
  'IMPERIAL_YARD': MeasurementUnitLength.imperialYard,
  'IMPERIAL_MILE': MeasurementUnitLength.imperialMile,
  'METRIC_MILLIMETER': MeasurementUnitLength.metricMillimeter,
  'METRIC_CENTIMETER': MeasurementUnitLength.metricCentimeter,
  'METRIC_METER': MeasurementUnitLength.metricMeter,
  'METRIC_KILOMETER': MeasurementUnitLength.metricKilometer,
};

MeasurementUnitLength getMeasurementUnitLengthFromString(String input) {
  var ans = stringToMeasurementUnitLength[input];
  if (ans == null) throw ArgumentError.value(input, 'input', 'Input must be a valid MeasurementUnitLength in SCREAMING_UPPERCASE');
  return ans;
}

enum MeasurementUnitVolume {
  genericFluidOunce,
  genericShot,
  genericCup,
  genericPint,
  genericQuart,
  genericGallon,
  imperialCubicInch,
  imperialCubicFoot,
  imperialCubicYard,
  metricMilliliter,
  metricLiter,
}

var stringToMeasurementUnitVolume = {
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

MeasurementUnitVolume getMeasurementUnitVolumeFromString(String input) {
  var ans = stringToMeasurementUnitVolume[input];
  if (ans == null) throw ArgumentError.value(input, 'input', 'Input must be a valid MeasurementUnitVolume in SCREAMING_UPPERCASE');
  return ans;
}

enum MeasurementUnitWeight {
  imperialWeightOunce,
  imperialPound,
  imperialStone,
  metricMilligram,
  metricGram,
  metricKilogram,
}

var stringToMeasurementUnitWeight = {
  'IMPERIAL_WEIGHT_OUNCE': MeasurementUnitWeight.imperialWeightOunce,
  'IMPERIAL_POUND': MeasurementUnitWeight.imperialPound,
  'IMPERIAL_STONE': MeasurementUnitWeight.imperialStone,
  'METRIC_MILLIGRAM': MeasurementUnitWeight.metricMilligram,
  'METRIC_GRAM': MeasurementUnitWeight.metricGram,
  'METRIC_KILOGRAM': MeasurementUnitWeight.metricKilogram,
};

MeasurementUnitWeight getMeasurementUnitWeightFromString(String input) {
  var ans = stringToMeasurementUnitWeight[input];
  if (ans == null) throw ArgumentError.value(input, 'input', 'Input must be a valid MeasurementUnitWeight in SCREAMING_UPPERCASE');
  return ans;
}