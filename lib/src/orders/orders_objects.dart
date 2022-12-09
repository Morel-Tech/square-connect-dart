import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'orders_objects.g.dart';

@JsonSerializable()
class OrderEntry extends Equatable {
  const OrderEntry({
    this.orderId,
    this.locationId,
    this.version,
  });

  /// Converts a [Map] to an [OrderEntry]
  factory OrderEntry.fromJson(Map<String, dynamic> json) =>
      _$OrderEntryFromJson(json);

  /// Converts a [OrderEntry] to a [Map]
  Map<String, dynamic> toJson() => _$OrderEntryToJson(this);

  final String? orderId;
  final String? locationId;
  final int? version;

  @override
  List<Object?> get props => [orderId, locationId, version];
}

@JsonSerializable()
class OrderLineItemDiscount extends Equatable {
  const OrderLineItemDiscount({
    this.uid,
    this.catalogObjectId,
    this.name,
    this.type,
    this.percentage,
    this.amountMoney,
    this.appliedMoney,
    this.scope,
  });

  /// Converts a [Map] to an [OrderLineItemDiscount]
  factory OrderLineItemDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemDiscountFromJson(json);

  /// Converts a [OrderLineItemDiscount] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemDiscountToJson(this);

  final String? uid;
  final String? catalogObjectId;
  final String? name;
  final OrderLineItemDiscountType? type;
  final String? percentage;
  final Money? amountMoney;
  final Money? appliedMoney;
  final OrderLineItemDiscountScope? scope;

  @override
  List<Object?> get props {
    return [
      uid,
      catalogObjectId,
      name,
      type,
      percentage,
      amountMoney,
      appliedMoney,
      scope,
    ];
  }
}

@JsonSerializable()
class OrderMoneyAmounts extends Equatable {
  const OrderMoneyAmounts({
    this.totalMoney,
    this.taxMoney,
    this.discountMoney,
    this.tipMoney,
    this.serviceChargeMoney,
  });

  /// Converts a [Map] to an [OrderMoneyAmounts]
  factory OrderMoneyAmounts.fromJson(Map<String, dynamic> json) =>
      _$OrderMoneyAmountsFromJson(json);

  /// Converts a [OrderMoneyAmounts] to a [Map]
  Map<String, dynamic> toJson() => _$OrderMoneyAmountsToJson(this);

  final Money? totalMoney;
  final Money? taxMoney;
  final Money? discountMoney;
  final Money? tipMoney;
  final Money? serviceChargeMoney;

  @override
  List<Object?> get props {
    return [
      totalMoney,
      taxMoney,
      discountMoney,
      tipMoney,
      serviceChargeMoney,
    ];
  }
}

@JsonSerializable()
class OrderFulfillmentShipmentDetails extends Equatable {
  const OrderFulfillmentShipmentDetails({
    this.cancelReason,
    this.canceledAt,
    this.carrier,
    this.expectedShippedAt,
    this.failedAt,
    this.failureReason,
    this.inProgressAt,
    this.packagedAt,
    this.placedAt,
    this.recipient,
    this.shippedAt,
    this.shippingNote,
    this.shippingType,
    this.trackingNumber,
    this.trackingUrl,
  });

  /// Converts a [Map] to an [OrderFulfillmentShipmentDetails]
  factory OrderFulfillmentShipmentDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentShipmentDetailsFromJson(json);

  /// Converts a [OrderFulfillmentShipmentDetails] to a [Map]
  Map<String, dynamic> toJson() =>
      _$OrderFulfillmentShipmentDetailsToJson(this);

  final String? cancelReason;
  final DateTime? canceledAt;
  final String? carrier;
  final DateTime? expectedShippedAt;
  final DateTime? failedAt;
  final DateTime? failureReason;
  final DateTime? inProgressAt;
  final DateTime? packagedAt;
  final DateTime? placedAt;
  final OrderFulfillmentRecipient? recipient;
  final DateTime? shippedAt;
  final String? shippingNote;
  final String? shippingType;
  final String? trackingNumber;
  final String? trackingUrl;

  @override
  List<Object?> get props {
    return [
      cancelReason,
      canceledAt,
      carrier,
      expectedShippedAt,
      failedAt,
      failureReason,
      inProgressAt,
      packagedAt,
      placedAt,
      recipient,
      shippedAt,
      shippingNote,
      shippingType,
      trackingNumber,
      trackingUrl,
    ];
  }
}

@JsonSerializable()
class OrderRoundingAdjustment extends Equatable {
  const OrderRoundingAdjustment({
    this.uid,
    this.name,
    this.amountMoney,
  });

  /// Converts a [Map] to an [OrderRoundingAdjustment]
  factory OrderRoundingAdjustment.fromJson(Map<String, dynamic> json) =>
      _$OrderRoundingAdjustmentFromJson(json);

  /// Converts a [OrderRoundingAdjustment] to a [Map]
  Map<String, dynamic> toJson() => _$OrderRoundingAdjustmentToJson(this);

  final String? uid;
  final String? name;
  final Money? amountMoney;

  @override
  List<Object?> get props => [uid, name, amountMoney];
}

@JsonSerializable()
class OrderReturn extends Equatable {
  const OrderReturn({
    this.id,
    this.sourceOrderId,
    this.returnLineItems,
    this.returnServiceCharges,
    this.returnTaxes,
    this.returnDiscounts,
    this.roundingAdjustment,
    this.returnAmounts,
  });

  /// Converts a [Map] to an [OrderReturn]
  factory OrderReturn.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnFromJson(json);

  /// Converts a [OrderReturn] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnToJson(this);

  final String? id;
  final String? sourceOrderId;
  final List<OrderReturnLineItem>? returnLineItems;
  final List<OrderReturnServiceCharge>? returnServiceCharges;
  final List<OrderReturnTax>? returnTaxes;
  final List<OrderReturnDiscount>? returnDiscounts;
  final OrderRoundingAdjustment? roundingAdjustment;
  final OrderMoneyAmounts? returnAmounts;

  @override
  List<Object?> get props {
    return [
      id,
      sourceOrderId,
      returnLineItems,
      returnServiceCharges,
      returnTaxes,
      returnDiscounts,
      roundingAdjustment,
      returnAmounts,
    ];
  }
}

@JsonSerializable()
class OrderReturnLineItem extends Equatable {
  const OrderReturnLineItem({
    this.id,
    this.sourceLineItemId,
    this.name,
    this.quantity,
    this.quantityUnit,
    this.note,
    this.catalogObjectId,
    this.variationName,
    this.returnModifiers,
    this.returnTaxes,
    this.returnDiscounts,
    this.basePriceMoney,
    this.variationTotalPriceMoney,
    this.grossReturnMoney,
    this.totalTaxMoney,
    this.totalDiscountMoney,
    this.totalMoney,
  });

  /// Converts a [Map] to an [OrderReturnLineItem]
  factory OrderReturnLineItem.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnLineItemFromJson(json);

  /// Converts a [OrderReturnLineItem] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnLineItemToJson(this);

  final String? id;
  final String? sourceLineItemId;
  final String? name;
  final double? quantity;
  final OrderQuantityUnit? quantityUnit;
  final String? note;
  final String? catalogObjectId;
  final String? variationName;
  final List<OrderReturnLineItemModifier>? returnModifiers;
  final List<OrderReturnTax>? returnTaxes;
  final List<OrderReturnDiscount>? returnDiscounts;
  final Money? basePriceMoney;
  final Money? variationTotalPriceMoney;
  final Money? grossReturnMoney;
  final Money? totalTaxMoney;
  final Money? totalDiscountMoney;
  final Money? totalMoney;

  @override
  List<Object?> get props {
    return [
      id,
      sourceLineItemId,
      name,
      quantity,
      quantityUnit,
      note,
      catalogObjectId,
      variationName,
      returnModifiers,
      returnTaxes,
      returnDiscounts,
      basePriceMoney,
      variationTotalPriceMoney,
      grossReturnMoney,
      totalTaxMoney,
      totalDiscountMoney,
      totalMoney,
    ];
  }
}

@JsonSerializable()
class OrderReturnLineItemModifier {
  const OrderReturnLineItemModifier({
    this.id,
    this.sourceModifierId,
    this.catalogObjectId,
    this.name,
    this.basePriceMoney,
    this.totalPriceMoney,
  });

  /// Converts a [Map] to an [OrderReturnLineItemModifier]
  factory OrderReturnLineItemModifier.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnLineItemModifierFromJson(json);

  /// Converts a [OrderReturnLineItemModifier] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnLineItemModifierToJson(this);

  final String? id;
  final String? sourceModifierId;
  final String? catalogObjectId;
  final String? name;
  final Money? basePriceMoney;
  final Money? totalPriceMoney;
}

@JsonSerializable()
class OrderReturnTax extends Equatable {
  const OrderReturnTax({
    this.id,
    this.sourceTaxId,
    this.catalogObjectId,
    this.name,
    this.type,
    this.percentage,
    this.appliedMoney,
    this.scope,
  });

  /// Converts a [Map] to an [OrderReturnTax]
  factory OrderReturnTax.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnTaxFromJson(json);

  /// Converts a [OrderReturnTax] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnTaxToJson(this);

  final String? id;
  final String? sourceTaxId;
  final String? catalogObjectId;
  final String? name;
  final OrderLineItemTaxType? type;
  final double? percentage;
  final Money? appliedMoney;
  final OrderLineItemTaxScope? scope;

  @override
  List<Object?> get props {
    return [
      id,
      sourceTaxId,
      catalogObjectId,
      name,
      type,
      percentage,
      appliedMoney,
      scope,
    ];
  }
}

@JsonSerializable()
class OrderReturnDiscount extends Equatable {
  const OrderReturnDiscount({
    this.id,
    this.sourceDiscountId,
    this.catalogObjectId,
    this.name,
    this.type,
    this.percentage,
    this.amountMoney,
    this.appliedMoney,
    this.scope,
  });

  /// Converts a [Map] to an [OrderReturnDiscount]
  factory OrderReturnDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnDiscountFromJson(json);

  /// Converts a [OrderReturnDiscount] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnDiscountToJson(this);

  final String? id;
  final String? sourceDiscountId;
  final String? catalogObjectId;
  final String? name;
  final OrderLineItemDiscountType? type;
  final double? percentage;
  final Money? amountMoney;
  final Money? appliedMoney;
  final OrderLineItemDiscountScope? scope;

  @override
  List<Object?> get props {
    return [
      id,
      sourceDiscountId,
      catalogObjectId,
      name,
      type,
      percentage,
      amountMoney,
      appliedMoney,
      scope,
    ];
  }
}

@JsonSerializable()
class OrderReturnServiceCharge extends Equatable {
  const OrderReturnServiceCharge({
    this.id,
    this.sourceServiceChargeId,
    this.catalogObjectId,
    this.name,
    this.percentage,
    this.amountMoney,
    this.appliedMoney,
    this.totalMoney,
    this.totalTaxMoney,
    this.calculationPhase,
    this.taxable,
    this.returnTaxes,
  });

  /// Converts a [Map] to an [OrderReturnServiceCharge]
  factory OrderReturnServiceCharge.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnServiceChargeFromJson(json);

  /// Converts a [OrderReturnServiceCharge] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnServiceChargeToJson(this);

  final String? id;
  final String? sourceServiceChargeId;
  final String? catalogObjectId;
  final String? name;
  final double? percentage;
  final Money? amountMoney;
  final Money? appliedMoney;
  final Money? totalMoney;
  final Money? totalTaxMoney;
  final OrderServiceChargeCalculationPhase? calculationPhase;
  final bool? taxable;
  final List<OrderReturnTax>? returnTaxes;

  @override
  List<Object?> get props {
    return [
      id,
      sourceServiceChargeId,
      catalogObjectId,
      name,
      percentage,
      amountMoney,
      appliedMoney,
      totalMoney,
      totalTaxMoney,
      calculationPhase,
      taxable,
      returnTaxes,
    ];
  }
}

/// Indicates how the discount is applied to the associated line item or order.
enum OrderLineItemDiscountType {
  /// Used for reporting only. The original transaction discount type is
  /// currently not supported by the API.
  @JsonValue('UNKNOWN_DISCOUNT')
  unknownDiscount,

  /// Apply the discount as a fixed percentage (e.g., 5%) off the item price.
  @JsonValue('FIXED_PERCENTAGE')
  fixedPercentage,

  /// Apply the discount as a fixed monetary value (e.g., $1.00) off the item
  /// price.
  @JsonValue('FIXED_AMOUNT')
  fixedAmount,

  /// Apply the discount as a variable percentage specified at time of the
  /// purchase.
  @JsonValue('VARIABLE_PERCENTAGE')
  variablePercentage,

  /// Apply the discount as a variable monetary value specified at time of the
  /// purchase.
  @JsonValue('VARIABLE_AMOUNT')
  variableAmount,
}

/// Indicates whether this is a line item or order level discount.
enum OrderLineItemDiscountScope {
  /// Used for reporting only. The original transaction discount scope is
  /// currently not supported by the API.
  @JsonValue('OTHER_DISCOUNT_SCOPE')
  otherDiscountScope,

  /// The discount should be applied to a single line item.
  @JsonValue('LINE_ITEM')
  lineItem,

  /// The discount should be applied to the entire order.
  @JsonValue('ORDER')
  order,
}

/// Inidicates a phase in the process of calculating order totals. Service
/// charges will be applied after the phase indicated.
enum OrderServiceChargeCalculationPhase {
  /// The service charge will be applied after discounts but before taxes.
  @JsonValue('SUBTOTAL_PHASE')
  subtotalPhase,

  /// The service charge will be applied after both discounts and taxes are
  ///  applied.
  @JsonValue('TOTAL_PHASE')
  totalPhase,
}
