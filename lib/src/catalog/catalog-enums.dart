/// Indicates the type of [CatalogObject].
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

/// Indicates whether the price of a [CatalogItemVariation] should be entered manually at point of sale
enum CatalogPricingType {
  fixedPricing,
  variablePricing,
}

/// Indicates whether Square should alert when the inventory quantity of a CatalogItemVariation is low.
enum InventoryAlertType {
  /// The variation does not display an alert.
  none,

  /// The variation does display an alert when the quantity is low.
  lowQuantity,
}

/// Indicates the type of [CatalogItem]. Can only create `regular` and `appointmentsService`.
enum CatalogItemProductType {
  regular,
  giftCard,
  appointmentsService,
  retailItem,
  restaurantItem,
}

/// Indicates when to calculate the taxes due on a cart.
enum TaxCalculationPhase {
  /// The tax is calculated based on the payment's subtotal. (ie before discounts)
  taxSubtotalPhase,

  /// The tax is calculated based on the payment's total.
  taxTotalPhase,
}

/// Indicates whether to the tax amount should be additional to or included in to the [CatalogItem] price.
enum TaxInclusionType {
  /// The tax is an additive tax. The tax amount is added on top of the [CatalogItemVariation] price. For example, a $1.00 item with a 10% additive tax would have a total cost to the buyer of $1.10.
  additive,

  /// The tax is an inclusive tax. The tax amount is included in the [CatalogItemVariation] price. For example, a $1.00 item with a 10% inclusive tax would have a total cost to the buyer of $1.00, with $0.91 (91 cents) of that total being the cost of the item and $0.09 (9 cents) being tax.
  inclusive,
}

/// Indicates how to apply a [CatalogDiscount] to a [CatalogItem].
enum CatalogDiscountType {
  /// Apply the discount as a fixed percentage (e.g., 5%) off the item price.
  fixedPercentage,

  /// Apply the discount as a fixed amount (e.g., $1.00) off the item price.
  fixedAmount,

  /// Apply the discount as a variable percentage off the item price. The percentage will be specified at the time of sale.
  variablePercentage,

  /// Apply the discount as a variable amount off the item price. The amount will be specified at the time of sale.
  variableAmount,
}

/// Indicates whether a [CatalogModifierList] supports multiple selections.
enum CatalogModifierListSelectionType {
  /// Indicates that a [CatalogModifierList] allows only a single [CatalogModifier] to be selected.
  single,

  /// Indicates that a [CatalogModifierList] allows multiple [CatalogModifier] to be selected.
  multiple,
}

/// Indicates a unit of area used to measure a quantity.
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

/// Indicates a unit of length used to measure a quantity.
enum MeasurementUnitLength {
  imperialInch,
  imperialFoot,
  imperialYard,
  imperialMile,
  metricMillimeter,
  metricCentimeter,
  metricMeter,
  metricKilometer,
}

/// Indicates a unit of volume used to measure a quantity.
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

/// Indicates a unit of weight used to measure a quantity.
enum MeasurementUnitWeight {
  imperialWeightOunce,
  imperialPound,
  imperialStone,
  metricMilligram,
  metricGram,
  metricKilogram,
}

/// Indicates a type of query made on [searchCatalog()].
enum CatalogQueryType {
  sortedAttributeQuery,
  exactQuery,
  prefixQuery,
  rangeQuery,
  textQuery,
  itemsForTaxQuery,
  itemsForModifierListQuery,
}
