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

