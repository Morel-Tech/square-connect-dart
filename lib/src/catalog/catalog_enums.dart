import 'package:json_annotation/json_annotation.dart';

/// Indicates whether the price of a CatalogItemVariation should be entered
/// manually at point of sale
enum CatalogPricingType {
  @JsonValue('FIXED_PRICING')
  fixedPricing,
  @JsonValue('VARIABLE_PRICING')
  variablePricing,
}

/// Indicates whether Square should alert when the inventory quantity of a
/// CatalogItemVariation is low.
enum InventoryAlertType {
  /// The variation does not display an alert.
  @JsonValue('NONE')
  none,

  /// The variation does display an alert when the quantity is low.
  @JsonValue('LOW_QUANTITY')
  lowQuantity,
}

/// Indicates the type of CatalogItem. Can only create `regular`
/// and `appointmentsService`.
enum CatalogItemProductType {
  @JsonValue('REGULAR')
  regular,
  @JsonValue('GIFT_CARD')
  giftCard,
  @JsonValue('APPOINTMENTS_SERVICE')
  appointmentsService,
  @JsonValue('RETAIL_ITEM')
  retailItem,
  @JsonValue('RESTAURANT_ITEM')
  restaurantItem,
}

/// Indicates when to calculate the taxes due on a cart.
enum TaxCalculationPhase {
  /// The tax is calculated based on the payment's subtotal.
  /// (ie before discounts)
  @JsonValue('TAX_SUBTOTAL_PHASE')
  taxSubtotalPhase,

  /// The tax is calculated based on the payment's total.
  @JsonValue('TAX_TOTAL_PHASE')
  taxTotalPhase,
}

/// Indicates whether to the tax amount should be additional to or included in
/// to the CatalogItem price.
enum TaxInclusionType {
  /// The tax is an additive tax. The tax amount is added on top of the
  /// CatalogItemVariation price. For example, a $1.00 item with a 10% additive
  /// tax would have a total cost to the buyer of $1.10.
  @JsonValue('ADDITIVE')
  additive,

  /// The tax is an inclusive tax. The tax amount is included in the
  /// CatalogItemVariation price. For example, a $1.00 item with a 10%
  /// inclusive tax would have a total cost to the buyer of $1.00, with $0.91
  /// (91 cents) of that total being the cost of the item and $0.09 (9 cents)
  /// being tax.
  @JsonValue('INCLUSIVE')
  inclusive,
}

/// Indicates how to apply a CatalogDiscount to a CatalogItem.
enum CatalogDiscountType {
  /// Apply the discount as a fixed percentage (e.g., 5%) off the item price.
  @JsonValue('FIXED_PERCENTAGE')
  fixedPercentage,

  /// Apply the discount as a fixed amount (e.g., $1.00) off the item price.
  @JsonValue('FIXED_AMOUNT')
  fixedAmount,

  /// Apply the discount as a variable percentage off the item price. The
  /// percentage will be specified at the time of sale.
  @JsonValue('VARIABLE_PERCENTAGE')
  variablePercentage,

  /// Apply the discount as a variable amount off the item price. The amount
  /// will be specified at the time of sale.
  @JsonValue('VARIABLE_AMOUNT')
  variableAmount,
}

/// Indicates a type of query made on [searchCatalog()].
enum CatalogQueryType {
  @JsonValue('SORTED_ATTRIBUTE_QUERY')
  sortedAttributeQuery,
  @JsonValue('EXACT_QUERY')
  exactQuery,
  @JsonValue('PREFIX_QUERY')
  prefixQuery,
  @JsonValue('RANGE_QUERY')
  rangeQuery,
  @JsonValue('TEXT_QUERY')
  textQuery,
  @JsonValue('ITEMS_FOR_TAX_QUERY')
  itemsForTaxQuery,
  @JsonValue('ITEMS_FOR_MODIFIER_LIST_QUERY')
  itemsForModifierListQuery,
}
