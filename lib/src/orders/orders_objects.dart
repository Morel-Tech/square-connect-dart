import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'orders_objects.g.dart';

@JsonSerializable()
class Order extends Equatable {
  const Order({
    required this.id,
    required this.locationId,
    required this.referenceId,
    required this.source,
    required this.customerId,
    required this.lineItems,
    required this.taxes,
    required this.discounts,
    required this.serviceCharges,
    required this.fulfillments,
    required this.returnAmounts,
    required this.netAmounts,
    required this.roundingAdjustment,
    required this.createdAt,
    required this.updatedAt,
    required this.closedAt,
    required this.state,
    required this.totalMoney,
    required this.totalTaxMoney,
    required this.totalDiscountMoney,
    required this.totalServiceChargeMoney,
    required this.tenders,
    required this.refunds,
    required this.returns,
    required this.version,
  });

  /// Converts a [Map] to an [Order]
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  /// Converts a [Order] to a [Map]
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  final String id;
  final String locationId;
  final String referenceId;
  final OrderSource source;
  final String customerId;
  final List<OrderLineItem> lineItems;
  final List<OrderLineItemTax> taxes;
  final List<OrderLineItemDiscount> discounts;
  final List<OrderServiceCharge> serviceCharges;
  final List<OrderFulfillment> fulfillments;
  final List<OrderReturn> returns;
  final OrderMoneyAmounts returnAmounts;
  final OrderMoneyAmounts netAmounts;
  final OrderRoundingAdjustment roundingAdjustment;
  final List<Tender> tenders;
  final List<Refund> refunds;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime closedAt;
  final OrderState state;
  final Money totalMoney;
  final Money totalTaxMoney;
  final Money totalDiscountMoney;
  final Money totalServiceChargeMoney;
  final int version;

  @override
  List<Object> get props {
    return [
      id,
      locationId,
      referenceId,
      source,
      customerId,
      lineItems,
      taxes,
      discounts,
      serviceCharges,
      fulfillments,
      returns,
      returnAmounts,
      netAmounts,
      roundingAdjustment,
      tenders,
      refunds,
      createdAt,
      updatedAt,
      closedAt,
      state,
      totalMoney,
      totalTaxMoney,
      totalDiscountMoney,
      totalServiceChargeMoney,
      version,
    ];
  }
}

@JsonSerializable()
class OrderEntry extends Equatable {
  const OrderEntry({
    required this.orderId,
    required this.locationId,
    required this.version,
  });

  /// Converts a [Map] to an [OrderEntry]
  factory OrderEntry.fromJson(Map<String, dynamic> json) =>
      _$OrderEntryFromJson(json);

  /// Converts a [OrderEntry] to a [Map]
  Map<String, dynamic> toJson() => _$OrderEntryToJson(this);

  final String orderId;
  final String locationId;
  final int version;

  @override
  List<Object> get props => [orderId, locationId, version];
}

@JsonSerializable()
class OrderLineItem extends Equatable {
  const OrderLineItem({
    required this.uid,
    required this.name,
    required this.quantity,
    required this.orderQuantityUnit,
    required this.note,
    required this.catalogObjectId,
    required this.variationName,
    required this.modifiers,
    required this.taxes,
    required this.discounts,
    required this.basePriceMoney,
    required this.variationTotalPriceMoney,
    required this.grossSalesMoney,
    required this.totalTaxMoney,
    required this.totalDiscountMoney,
    required this.totalMoney,
  });

  /// Converts a [Map] to an [OrderLineItem]
  factory OrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemFromJson(json);

  /// Converts a [OrderLineItem] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemToJson(this);

  final String uid;
  final String name;
  final double quantity;
  final OrderQuantityUnit orderQuantityUnit;
  final String note;
  final String catalogObjectId;
  final String variationName;
  final List<OrderLineItemModifier> modifiers;
  final List<OrderLineItemTax> taxes;
  final List<OrderLineItemDiscount> discounts;
  final Money basePriceMoney;
  final Money variationTotalPriceMoney;
  final Money grossSalesMoney;
  final Money totalTaxMoney;
  final Money totalDiscountMoney;
  final Money totalMoney;

  @override
  List<Object> get props {
    return [
      uid,
      name,
      quantity,
      orderQuantityUnit,
      note,
      catalogObjectId,
      variationName,
      modifiers,
      taxes,
      discounts,
      basePriceMoney,
      variationTotalPriceMoney,
      grossSalesMoney,
      totalTaxMoney,
      totalDiscountMoney,
      totalMoney,
    ];
  }
}

@JsonSerializable()
class OrderLineItemTax extends Equatable {
  const OrderLineItemTax({
    required this.uid,
    required this.catalogObjectId,
    required this.name,
    required this.type,
    required this.percentage,
    required this.appliedMoney,
    required this.scope,
  });

  /// Converts a [Map] to an [OrderLineItemTax]
  factory OrderLineItemTax.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemTaxFromJson(json);

  /// Converts a [OrderLineItemTax] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemTaxToJson(this);

  final String uid;
  final String catalogObjectId;
  final String name;
  final OrderLineItemTaxType type;
  final double percentage;
  final Money appliedMoney;
  final OrderLineItemTaxScope scope;

  @override
  List<Object> get props {
    return [
      uid,
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
class OrderLineItemDiscount extends Equatable {
  const OrderLineItemDiscount({
    required this.uid,
    required this.catalogObjectId,
    required this.name,
    required this.type,
    required this.percentage,
    required this.amountMoney,
    required this.appliedMoney,
    required this.scope,
  });

  /// Converts a [Map] to an [OrderLineItemDiscount]
  factory OrderLineItemDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemDiscountFromJson(json);

  /// Converts a [OrderLineItemDiscount] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemDiscountToJson(this);

  final String uid;
  final String catalogObjectId;
  final String name;
  final OrderLineItemDiscountType type;
  final double percentage;
  final Money amountMoney;
  final Money appliedMoney;
  final OrderLineItemDiscountScope scope;

  @override
  List<Object> get props {
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
class OrderLineItemModifier extends Equatable {
  const OrderLineItemModifier({
    required this.uid,
    required this.catalogObjectId,
    required this.name,
    required this.basePriceMoney,
    required this.totalPriceMoney,
  });

  /// Converts a [Map] to an [OrderLineItemModifier]
  factory OrderLineItemModifier.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemModifierFromJson(json);

  /// Converts a [OrderLineItemModifier] to a [Map]
  Map<String, dynamic> toJson() => _$OrderLineItemModifierToJson(this);

  final String uid;
  final String catalogObjectId;
  final String name;
  final Money basePriceMoney;
  final Money totalPriceMoney;

  @override
  List<Object> get props {
    return [
      uid,
      catalogObjectId,
      name,
      basePriceMoney,
      totalPriceMoney,
    ];
  }
}

@JsonSerializable()
class OrderServiceCharge extends Equatable {
  const OrderServiceCharge({
    required this.uid,
    required this.name,
    required this.catalogObjectId,
    required this.percentage,
    required this.amountMoney,
    required this.appliedMoney,
    required this.totalMoney,
    required this.totalTaxMoney,
    required this.calculationPhase,
    required this.taxable,
    required this.taxes,
  });

  /// Converts a [Map] to an [OrderServiceCharge]
  factory OrderServiceCharge.fromJson(Map<String, dynamic> json) =>
      _$OrderServiceChargeFromJson(json);

  /// Converts a [OrderServiceCharge] to a [Map]
  Map<String, dynamic> toJson() => _$OrderServiceChargeToJson(this);

  final String uid;
  final String name;
  final String catalogObjectId;
  final double percentage;
  final Money amountMoney;
  final Money appliedMoney;
  final Money totalMoney;
  final Money totalTaxMoney;
  final OrderServiceChargeCalculationPhase calculationPhase;
  final bool taxable;
  final List<OrderLineItemTax> taxes;

  @override
  List<Object> get props {
    return [
      uid,
      name,
      catalogObjectId,
      percentage,
      amountMoney,
      appliedMoney,
      totalMoney,
      totalTaxMoney,
      calculationPhase,
      taxable,
      taxes,
    ];
  }
}

@JsonSerializable()
class OrderMoneyAmounts extends Equatable {
  const OrderMoneyAmounts({
    required this.totalMoney,
    required this.taxMoney,
    required this.discountMoney,
    required this.tipMoney,
    required this.serviceChargeMoney,
  });

  /// Converts a [Map] to an [OrderMoneyAmounts]
  factory OrderMoneyAmounts.fromJson(Map<String, dynamic> json) =>
      _$OrderMoneyAmountsFromJson(json);

  /// Converts a [OrderMoneyAmounts] to a [Map]
  Map<String, dynamic> toJson() => _$OrderMoneyAmountsToJson(this);

  final Money totalMoney;
  final Money taxMoney;
  final Money discountMoney;
  final Money tipMoney;
  final Money serviceChargeMoney;

  @override
  List<Object> get props {
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
class OrderSource extends Equatable {
  const OrderSource({
    required this.name,
  });

  /// Converts a [Map] to an [OrderSource]
  factory OrderSource.fromJson(Map<String, dynamic> json) =>
      _$OrderSourceFromJson(json);

  /// Converts a [OrderSource] to a [Map]
  Map<String, dynamic> toJson() => _$OrderSourceToJson(this);

  final String name;

  @override
  List<Object> get props => [name];
}

@JsonSerializable()
class OrderQuantityUnit extends Equatable {
  const OrderQuantityUnit({
    required this.measurementUnit,
    required this.precision,
  });

  /// Converts a [Map] to an [OrderQuantityUnit]
  factory OrderQuantityUnit.fromJson(Map<String, dynamic> json) =>
      _$OrderQuantityUnitFromJson(json);

  /// Converts a [OrderQuantityUnit] to a [Map]
  Map<String, dynamic> toJson() => _$OrderQuantityUnitToJson(this);

  final MeasurementUnit measurementUnit;
  final int precision;

  @override
  List<Object> get props => [measurementUnit, precision];
}

@JsonSerializable()
class OrderFulfillment extends Equatable {
  const OrderFulfillment({
    required this.type,
    required this.state,
    required this.pickupDetails,
    required this.shipmentDetails,
    required this.uid,
  });

  /// Converts a [Map] to an [OrderFulfillment]
  factory OrderFulfillment.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentFromJson(json);

  /// Converts a [OrderFulfillment] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentToJson(this);

  final OrderFulfillmentType type;
  final OrderFulfillmentState state;
  final OrderFulfillmentPickupDetails pickupDetails;
  final OrderFulfillmentShipmentDetails shipmentDetails;
  final String uid;

  @override
  List<Object> get props {
    return [
      type,
      state,
      pickupDetails,
      shipmentDetails,
      uid,
    ];
  }
}

@JsonSerializable()
class OrderFulfillmentPickupDetails extends Equatable {
  const OrderFulfillmentPickupDetails({
    required this.recipient,
    required this.expiresAt,
    required this.autoCompleteDuration,
    required this.scheduleType,
    required this.pickupAt,
    required this.pickupWindowDuration,
    required this.prepTimeDuration,
    required this.note,
    required this.placedAt,
    required this.acceptedAt,
    required this.rejectedAt,
    required this.readyAt,
    required this.expiredAt,
    required this.pickedUpAt,
    required this.canceledAt,
    required this.cancelReason,
  });

  /// Converts a [Map] to an [OrderFulfillmentPickupDetails]
  factory OrderFulfillmentPickupDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentPickupDetailsFromJson(json);

  /// Converts a [OrderFulfillmentPickupDetails] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentPickupDetailsToJson(this);

  final OrderFulfillmentRecipient recipient;
  final DateTime expiresAt;
  final Duration autoCompleteDuration;
  final OrderFulfillmentPickupDetailsScheduleType scheduleType;
  final DateTime pickupAt;
  final Duration pickupWindowDuration;
  final Duration prepTimeDuration;
  final String note;
  final DateTime placedAt;
  final DateTime acceptedAt;
  final DateTime rejectedAt;
  final DateTime readyAt;
  final DateTime expiredAt;
  final DateTime pickedUpAt;
  final DateTime canceledAt;
  final String cancelReason;

  @override
  List<Object> get props {
    return [
      recipient,
      expiresAt,
      autoCompleteDuration,
      scheduleType,
      pickupAt,
      pickupWindowDuration,
      prepTimeDuration,
      note,
      placedAt,
      acceptedAt,
      rejectedAt,
      readyAt,
      expiredAt,
      pickedUpAt,
      canceledAt,
      cancelReason,
    ];
  }
}

@JsonSerializable()
class OrderFulfillmentShipmentDetails extends Equatable {
  const OrderFulfillmentShipmentDetails({
    required this.cancelReason,
    required this.canceledAt,
    required this.carrier,
    required this.expectedShippedAt,
    required this.failedAt,
    required this.failureReason,
    required this.inProgressAt,
    required this.packagedAt,
    required this.placedAt,
    required this.recipient,
    required this.shippedAt,
    required this.shippingNote,
    required this.shippingType,
    required this.trackingNumber,
    required this.trackingUrl,
  });

  /// Converts a [Map] to an [OrderFulfillmentShipmentDetails]
  factory OrderFulfillmentShipmentDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentShipmentDetailsFromJson(json);

  /// Converts a [OrderFulfillmentShipmentDetails] to a [Map]
  Map<String, dynamic> toJson() =>
      _$OrderFulfillmentShipmentDetailsToJson(this);

  final String cancelReason;
  final DateTime canceledAt;
  final String carrier;
  final DateTime expectedShippedAt;
  final DateTime failedAt;
  final DateTime failureReason;
  final DateTime inProgressAt;
  final DateTime packagedAt;
  final DateTime placedAt;
  final OrderFulfillmentRecipient recipient;
  final DateTime shippedAt;
  final String shippingNote;
  final String shippingType;
  final String trackingNumber;
  final String trackingUrl;

  @override
  List<Object> get props {
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
class OrderFulfillmentRecipient extends Equatable {
  const OrderFulfillmentRecipient({
    required this.customerId,
    required this.displayName,
    required this.emailAddress,
    required this.phoneNumber,
    required this.address,
  });

  /// Converts a [Map] to an [OrderFulfillmentRecipient]
  factory OrderFulfillmentRecipient.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentRecipientFromJson(json);

  /// Converts a [OrderFulfillmentRecipient] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentRecipientToJson(this);

  final String customerId;
  final String displayName;
  final String emailAddress;
  final String phoneNumber;
  final Address address;

  @override
  List<Object> get props {
    return [
      customerId,
      displayName,
      emailAddress,
      phoneNumber,
      address,
    ];
  }
}

@JsonSerializable()
class OrderRoundingAdjustment extends Equatable {
  const OrderRoundingAdjustment({
    required this.uid,
    required this.name,
    required this.amountMoney,
  });

  /// Converts a [Map] to an [OrderRoundingAdjustment]
  factory OrderRoundingAdjustment.fromJson(Map<String, dynamic> json) =>
      _$OrderRoundingAdjustmentFromJson(json);

  /// Converts a [OrderRoundingAdjustment] to a [Map]
  Map<String, dynamic> toJson() => _$OrderRoundingAdjustmentToJson(this);

  final String uid;
  final String name;
  final Money amountMoney;

  @override
  List<Object> get props => [uid, name, amountMoney];
}

@JsonSerializable()
class OrderReturn extends Equatable {
  const OrderReturn({
    required this.id,
    required this.sourceOrderId,
    required this.returnLineItems,
    required this.returnServiceCharges,
    required this.returnTaxes,
    required this.returnDiscounts,
    required this.roundingAdjustment,
    required this.returnAmounts,
  });

  /// Converts a [Map] to an [OrderReturn]
  factory OrderReturn.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnFromJson(json);

  /// Converts a [OrderReturn] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnToJson(this);

  final String id;
  final String sourceOrderId;
  final List<OrderReturnLineItem> returnLineItems;
  final List<OrderReturnServiceCharge> returnServiceCharges;
  final List<OrderReturnTax> returnTaxes;
  final List<OrderReturnDiscount> returnDiscounts;
  final OrderRoundingAdjustment roundingAdjustment;
  final OrderMoneyAmounts returnAmounts;

  @override
  List<Object> get props {
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
    required this.id,
    required this.sourceLineItemId,
    required this.name,
    required this.quantity,
    required this.quantityUnit,
    required this.note,
    required this.catalogObjectId,
    required this.variationName,
    required this.returnModifiers,
    required this.returnTaxes,
    required this.returnDiscounts,
    required this.basePriceMoney,
    required this.variationTotalPriceMoney,
    required this.grossReturnMoney,
    required this.totalTaxMoney,
    required this.totalDiscountMoney,
    required this.totalMoney,
  });

  /// Converts a [Map] to an [OrderReturnLineItem]
  factory OrderReturnLineItem.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnLineItemFromJson(json);

  /// Converts a [OrderReturnLineItem] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnLineItemToJson(this);

  final String id;
  final String sourceLineItemId;
  final String name;
  final double quantity;
  final OrderQuantityUnit quantityUnit;
  final String note;
  final String catalogObjectId;
  final String variationName;
  final List<OrderReturnLineItemModifier> returnModifiers;
  final List<OrderReturnTax> returnTaxes;
  final List<OrderReturnDiscount> returnDiscounts;
  final Money basePriceMoney;
  final Money variationTotalPriceMoney;
  final Money grossReturnMoney;
  final Money totalTaxMoney;
  final Money totalDiscountMoney;
  final Money totalMoney;

  @override
  List<Object> get props {
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
    required this.id,
    required this.sourceModifierId,
    required this.catalogObjectId,
    required this.name,
    required this.basePriceMoney,
    required this.totalPriceMoney,
  });

  /// Converts a [Map] to an [OrderReturnLineItemModifier]
  factory OrderReturnLineItemModifier.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnLineItemModifierFromJson(json);

  /// Converts a [OrderReturnLineItemModifier] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnLineItemModifierToJson(this);

  final String id;
  final String sourceModifierId;
  final String catalogObjectId;
  final String name;
  final Money basePriceMoney;
  final Money totalPriceMoney;
}

@JsonSerializable()
class OrderReturnTax extends Equatable {
  const OrderReturnTax({
    required this.id,
    required this.sourceTaxId,
    required this.catalogObjectId,
    required this.name,
    required this.type,
    required this.percentage,
    required this.appliedMoney,
    required this.scope,
  });

  /// Converts a [Map] to an [OrderReturnTax]
  factory OrderReturnTax.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnTaxFromJson(json);

  /// Converts a [OrderReturnTax] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnTaxToJson(this);

  final String id;
  final String sourceTaxId;
  final String catalogObjectId;
  final String name;
  final OrderLineItemTaxType type;
  final double percentage;
  final Money appliedMoney;
  final OrderLineItemTaxScope scope;

  @override
  List<Object> get props {
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
    required this.id,
    required this.sourceDiscountId,
    required this.catalogObjectId,
    required this.name,
    required this.type,
    required this.percentage,
    required this.amountMoney,
    required this.appliedMoney,
    required this.scope,
  });

  /// Converts a [Map] to an [OrderReturnDiscount]
  factory OrderReturnDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnDiscountFromJson(json);

  /// Converts a [OrderReturnDiscount] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnDiscountToJson(this);

  final String id;
  final String sourceDiscountId;
  final String catalogObjectId;
  final String name;
  final OrderLineItemDiscountType type;
  final double percentage;
  final Money amountMoney;
  final Money appliedMoney;
  final OrderLineItemDiscountScope scope;

  @override
  List<Object> get props {
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
    required this.id,
    required this.sourceServiceChargeId,
    required this.catalogObjectId,
    required this.name,
    required this.percentage,
    required this.amountMoney,
    required this.appliedMoney,
    required this.totalMoney,
    required this.totalTaxMoney,
    required this.calculationPhase,
    required this.taxable,
    required this.returnTaxes,
  });

  /// Converts a [Map] to an [OrderReturnServiceCharge]
  factory OrderReturnServiceCharge.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnServiceChargeFromJson(json);

  /// Converts a [OrderReturnServiceCharge] to a [Map]
  Map<String, dynamic> toJson() => _$OrderReturnServiceChargeToJson(this);

  final String id;
  final String sourceServiceChargeId;
  final String catalogObjectId;
  final String name;
  final double percentage;
  final Money amountMoney;
  final Money appliedMoney;
  final Money totalMoney;
  final Money totalTaxMoney;
  final OrderServiceChargeCalculationPhase calculationPhase;
  final bool taxable;
  final List<OrderReturnTax> returnTaxes;

  @override
  List<Object> get props {
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

/// Indicates how the tax is applied to the associated line item or order.
enum OrderLineItemTaxType {
  /// Used for reporting only. The original transaction tax type is currently
  /// not supported by the API.
  @JsonValue('UNKNOWN_TAX')
  unknownTax,

  /// The tax is an additive tax. The tax amount is added on top of the price.
  /// For example, a $1.00 item with a 10% additive tax would have a total cost
  /// to the buyer of $1.10.
  @JsonValue('ADDITIVE')
  additive,

  /// The tax is an inclusive tax. Inclusive taxes are already included in the
  /// line item price or order total. For example, a $1.00 item with a 10%
  /// inclusive tax would have a pre-tax cost of $0.91 (91 cents) and a $0.09
  /// (9 cents) tax for a total cost of $1 to the buyer.
  @JsonValue('INCLUSIVE')
  inclusive,
}

/// Indicates whether this is a line item or order level tax.
enum OrderLineItemTaxScope {
  /// Used for reporting only. The original transaction tax scope is currently
  /// not supported by the API.
  @JsonValue('OTHER_TAX_SCOPE')
  otherTaxScope,

  /// The tax should be applied to a single line item.
  @JsonValue('LINE_ITEM')
  lineItem,

  /// The tax should be applied to the entire order.
  @JsonValue('ORDER')
  order,
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

/// Indicates state of the order.
enum OrderState {
  /// Indicates the order is open. Open orders may be updated.
  @JsonValue('OPEN')
  open,

  /// Indicates the order is completed. Completed orders are fully paid. This
  /// is a terminal state.
  @JsonValue('COMPLETED')
  completed,

  /// Indicates the order is canceled. Canceled orders are not paid. This is a
  /// terminal state.
  @JsonValue('CANCELED')
  canceled,
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

/// The type of fulfillment.
enum OrderFulfillmentType {
  @JsonValue('PICKUP')
  pickup,
  @JsonValue('SHIPMENT')
  shipment,
}

/// The state of the fulfillment.
enum OrderFulfillmentState {
  @JsonValue('PROPOSED')
  proposed,
  @JsonValue('RESERVED')
  reserved,
  @JsonValue('PREPARED')
  prepared,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELED')
  canceled,
  @JsonValue('FAILED')
  failed,
}

/// The schedule type of the pickup fulfillment.
enum OrderFulfillmentPickupDetailsScheduleType {
  @JsonValue('SCHEDULED')
  scheduled,
  @JsonValue('ASAP')
  asap,
}
