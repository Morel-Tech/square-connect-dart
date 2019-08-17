import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/orders/orders-enums-converter.dart';

class Order {
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

  Order({
    this.id,
    this.locationId,
    this.referenceId,
    this.source,
    this.customerId,
    this.lineItems,
    this.taxes,
    this.discounts,
    this.serviceCharges,
    this.fulfillments,
    this.returnAmounts,
    this.netAmounts,
    this.roundingAdjustment,
    this.createdAt,
    this.updatedAt,
    this.closedAt,
    this.state,
    this.totalMoney,
    this.totalTaxMoney,
    this.totalDiscountMoney,
    this.totalServiceChargeMoney,
    this.tenders,
    this.refunds,
    this.returns,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      locationId: json['location_id'],
      referenceId: json['reference_id'],
      source:
          json['source'] != null ? OrderSource.fromJson(json['source']) : null,
      customerId: json['customer_id'],
      lineItems: json['line_items'] != null
          ? (json['line_items'] as List)
              .map((item) => OrderLineItem.fromJson(item))
              .toList()
          : null,
      taxes: json['taxes'] != null
          ? (json['taxes'] as List)
              .map((item) => OrderLineItemTax.fromJson(item))
              .toList()
          : null,
      discounts: json['discounts'] != null
          ? (json['discounts'] as List)
              .map((item) => OrderLineItemDiscount.fromJson(item))
              .toList()
          : null,
      serviceCharges: json['service_charges'] != null
          ? (json['service_charges'] as List)
              .map((item) => OrderServiceCharge.fromJson(item))
              .toList()
          : null,
      fulfillments: json['fulfillments'] != null
          ? (json['fulfillments'] as List)
              .map((item) => OrderFulfillment.fromJson(item))
              .toList()
          : null,
      returnAmounts: json['return_amounts'] != null
          ? OrderMoneyAmounts.fromJson(json['return_amounts'])
          : null,
      netAmounts: json['net_amounts'] != null
          ? OrderMoneyAmounts.fromJson(json['net_amounts'])
          : null,
      roundingAdjustment: json['rounding_adjustment'] != null
          ? OrderRoundingAdjustment.fromJson(json['rounding_adjustment'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
      closedAt:
          json['closed_at'] != null ? DateTime.parse(json['closed_at']) : null,
      state:
          json['state'] != null ? getOrderStateFromString(json['state']) : null,
      totalMoney: json['total_money'] != null
          ? Money.fromJson(json['total_money'])
          : null,
      totalTaxMoney: json['total_tax_money'] != null
          ? Money.fromJson(json['total_tax_money'])
          : null,
      totalDiscountMoney: json['total_discount_money'] != null
          ? Money.fromJson(json['total_discount_money'])
          : null,
      totalServiceChargeMoney: json['total_service_charge_money'] != null
          ? Money.fromJson(json['total_service_charge_money'])
          : null,
      tenders: json['tenders'] != null
          ? (json['tenders'] as List)
              .map((item) => Tender.fromJson(item))
              .toList()
          : null,
      refunds: json['refunds'] != null
          ? (json['refunds'] as List)
              .map((item) => Refund.fromJson(item))
              .toList()
          : null,
      returns: json['returns'] != null
          ? (json['returns'] as List)
              .map((item) => OrderReturn.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (locationId != null) body['location_id'] = locationId;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (source != null) body['source'] = source.toJson();
    if (customerId != null) body['customer_id'] = customerId;
    if (lineItems != null)
      body['line_items'] = lineItems.map((item) => item.toJson()).toList();
    if (taxes != null)
      body['taxes'] = taxes.map((item) => item.toJson()).toList();
    if (discounts != null)
      body['discounts'] = discounts.map((item) => item.toJson()).toList();
    if (serviceCharges != null)
      body['service_charges'] =
          serviceCharges.map((item) => item.toJson()).toList();
    if (fulfillments != null)
      body['fulfillments'] = fulfillments.map((item) => item.toJson()).toList();
    if (returns != null)
      body['returns'] = returns.map((item) => item.toJson()).toList();
    if (returnAmounts != null) body['return_amounts'] = returnAmounts.toJson();
    if (netAmounts != null) body['net_amounts'] = netAmounts.toJson();
    if (roundingAdjustment != null)
      body['rounding_adjustment'] = roundingAdjustment.toJson();
    if (tenders != null)
      body['tenders'] = tenders.map((item) => item.toJson()).toList();
    if (refunds != null)
      body['refunds'] = refunds.map((item) => item.toJson()).toList();
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (updatedAt != null) body['updated_at'] = updatedAt.toString();
    if (closedAt != null) body['closed_at'] = closedAt.toString();
    if (state != null) body['state'] = getStringFromOrderState(state);
    if (totalMoney != null) body['total_money'] = totalMoney.toJson();
    if (totalTaxMoney != null) body['total_tax_money'] = totalTaxMoney.toJson();
    if (totalDiscountMoney != null)
      body['total_discount_money'] = totalDiscountMoney.toJson();
    if (totalServiceChargeMoney != null)
      body['total_service_charge_money'] = totalServiceChargeMoney.toJson();

    return body;
  }
}

class OrderEntry {
  final String orderId;
  final String locationId;

  OrderEntry({this.orderId, this.locationId});

  factory OrderEntry.fromJson(Map<String, dynamic> json) {
    return OrderEntry(
      orderId: json['order_id'],
      locationId: json['location_id'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (orderId != null) body['order_id'] = orderId;
    if (locationId != null) body['location_id'] = locationId;

    return body;
  }
}

class OrderLineItem {
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

  OrderLineItem(
      {this.uid,
      this.name,
      this.quantity,
      this.orderQuantityUnit,
      this.note,
      this.catalogObjectId,
      this.variationName,
      this.modifiers,
      this.taxes,
      this.discounts,
      this.basePriceMoney,
      this.variationTotalPriceMoney,
      this.grossSalesMoney,
      this.totalTaxMoney,
      this.totalDiscountMoney,
      this.totalMoney});

  factory OrderLineItem.fromJson(Map<String, dynamic> json) {
    return OrderLineItem(
      uid: json['uid'],
      name: json['name'],
      quantity:
          json['quantity'] != null ? double.parse(json['quantity']) : null,
      orderQuantityUnit: json['quantity_unit'] != null
          ? OrderQuantityUnit.fromJson(json['quantity_unit'])
          : null,
      note: json['note'],
      catalogObjectId: json['catalog_object_id'],
      variationName: json['variation_name'],
      modifiers: json['modifiers'] != null
          ? (json['modifiers'] as List)
              .map((item) => OrderLineItemModifier.fromJson(item))
              .toList()
          : null,
      taxes: json['taxes'] != null
          ? (json['taxes'] as List)
              .map((item) => OrderLineItemTax.fromJson(item))
              .toList()
          : null,
      discounts: json['discounts'] != null
          ? (json['discounts'] as List)
              .map((item) => OrderLineItemDiscount.fromJson(item))
              .toList()
          : null,
      basePriceMoney: json['base_price_money'] != null
          ? Money.fromJson(json['base_price_money'])
          : null,
      variationTotalPriceMoney: json['variation_total_price_money'] != null
          ? Money.fromJson(json['variation_total_price_money'])
          : null,
      grossSalesMoney: json['gross_sales_money'] != null
          ? Money.fromJson(json['gross_sales_money'])
          : null,
      totalTaxMoney: json['total_tax_money'] != null
          ? Money.fromJson(json['total_tax_money'])
          : null,
      totalDiscountMoney: json['total_discount_money'] != null
          ? Money.fromJson(json['total_discount_money'])
          : null,
      totalMoney: json['total_money'] != null
          ? Money.fromJson(json['total_money'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (uid != null) body['uid'] = uid;
    if (name != null) body['name'] = name;
    if (quantity != null) body['quantity'] = quantity.toString();
    if (orderQuantityUnit != null)
      body['quantity_unit'] = orderQuantityUnit.toJson();
    if (note != null) body['note'] = note;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (variationName != null) body['variation_name'] = variationName;
    if (modifiers != null)
      body['modifiers'] = modifiers.map((item) => item.toJson()).toList();
    if (taxes != null)
      body['taxes'] = taxes.map((item) => item.toJson()).toList();
    if (discounts != null)
      body['discounts'] = discounts.map((item) => item.toJson()).toList();
    if (basePriceMoney != null)
      body['base_price_money'] = basePriceMoney.toJson();
    if (variationTotalPriceMoney != null)
      body['variation_total_price_money'] = variationTotalPriceMoney.toJson();
    if (grossSalesMoney != null)
      body['gross_sales_money'] = grossSalesMoney.toJson();
    if (totalTaxMoney != null) body['total_tax_money'] = totalTaxMoney.toJson();
    if (totalDiscountMoney != null)
      body['total_discount_money'] = totalDiscountMoney.toJson();
    if (totalMoney != null) body['total_money'] = totalMoney.toJson();

    return body;
  }
}

class OrderLineItemTax {
  final String uid;
  final String catalogObjectId;
  final String name;
  final OrderLineItemTaxType type;
  final double percentage;
  final Money appliedMoney;
  final OrderLineItemTaxScope scope;

  OrderLineItemTax(
      {this.uid,
      this.catalogObjectId,
      this.name,
      this.type,
      this.percentage,
      this.appliedMoney,
      this.scope});

  factory OrderLineItemTax.fromJson(Map<String, dynamic> json) {
    return OrderLineItemTax(
      uid: json['uid'],
      catalogObjectId: json['catalog_object_id'],
      name: json['name'],
      type: json['type'] != null
          ? getOrderLineItemTaxTypeFromString(json['type'])
          : null,
      percentage:
          json['percentage'] != null ? double.parse(json['percentage']) : null,
      appliedMoney: json['applied_money'] != null
          ? Money.fromJson(json['applied_money'])
          : null,
      scope: json['scope'] != null
          ? getOrderLineItemTaxScopeFromString(json['scope'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (uid != null) body['uid'] = uid;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (name != null) body['name'] = name;
    if (type != null) body['type'] = getStringFromOrderLineItemTaxType(type);
    if (percentage != null) body['percentage'] = percentage.toString();
    if (appliedMoney != null) body['applied_money'] = appliedMoney.toJson();
    if (scope != null)
      body['scope'] = getStringFromOrderLineItemTaxScope(scope);

    return body;
  }
}

class OrderLineItemDiscount {
  final String uid;
  final String catalogObjectId;
  final String name;
  final OrderLineItemDiscountType type;
  final double percentage;
  final Money amountMoney;
  final Money appliedMoney;
  final OrderLineItemDiscountScope scope;

  OrderLineItemDiscount(
      {this.uid,
      this.catalogObjectId,
      this.name,
      this.type,
      this.percentage,
      this.amountMoney,
      this.appliedMoney,
      this.scope});

  factory OrderLineItemDiscount.fromJson(Map<String, dynamic> json) {
    return OrderLineItemDiscount(
      uid: json['uid'],
      catalogObjectId: json['catalog_object_id'],
      name: json['name'],
      type: json['type'] != null
          ? getOrderLineItemDiscountTypeFromString(json['type'])
          : null,
      percentage:
          json['percentage'] != null ? double.parse(json['percentage']) : null,
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      appliedMoney: json['applied_money'] != null
          ? Money.fromJson(json['applied_money'])
          : null,
      scope: json['scope'] != null
          ? getOrderLineItemDiscountScopeFromString(json['scope'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (uid != null) body['uid'] = uid;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (name != null) body['name'] = name;
    if (type != null)
      body['type'] = getStringFromOrderLineItemDiscountType(type);
    if (percentage != null) body['percentage'] = percentage.toString();
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (appliedMoney != null) body['applied_money'] = appliedMoney.toJson();
    if (scope != null)
      body['scope'] = getStringFromOrderLineItemDiscountScope(scope);

    return body;
  }
}

class OrderLineItemModifier {
  final String uid;
  final String catalogObjectId;
  final String name;
  final Money basePriceMoney;
  final Money totalPriceMoney;

  OrderLineItemModifier(
      {this.uid,
      this.catalogObjectId,
      this.name,
      this.basePriceMoney,
      this.totalPriceMoney});

  factory OrderLineItemModifier.fromJson(Map<String, dynamic> json) {
    return OrderLineItemModifier(
      uid: json['uid'],
      catalogObjectId: json['catalog_object_id'],
      name: json['name'],
      basePriceMoney: json['base_price_money'] != null
          ? Money.fromJson(json['base_price_money'])
          : null,
      totalPriceMoney: json['total_price_money'] != null
          ? Money.fromJson(json['total_price_money'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (uid != null) body['uid'] = uid;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (name != null) body['name'] = name;
    if (basePriceMoney != null)
      body['base_price_money'] = basePriceMoney.toJson();
    if (totalPriceMoney != null)
      body['total_price_money'] = totalPriceMoney.toJson();

    return body;
  }
}

class OrderServiceCharge {
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

  OrderServiceCharge(
      {this.uid,
      this.name,
      this.catalogObjectId,
      this.percentage,
      this.amountMoney,
      this.appliedMoney,
      this.totalMoney,
      this.totalTaxMoney,
      this.calculationPhase,
      this.taxable,
      this.taxes});

  factory OrderServiceCharge.fromJson(Map<String, dynamic> json) {
    return OrderServiceCharge(
      uid: json['uid'],
      name: json['name'],
      catalogObjectId: json['catalog_object_id'],
      percentage:
          json['percentage'] != null ? double.parse(json['percentage']) : null,
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      appliedMoney: json['applied_money'] != null
          ? Money.fromJson(json['applied_money'])
          : null,
      totalMoney: json['total_money'] != null
          ? Money.fromJson(json['total_money'])
          : null,
      totalTaxMoney: json['total_tax_money'] != null
          ? Money.fromJson(json['total_tax_money'])
          : null,
      calculationPhase: json['calculation_phase'] != null
          ? getOrderServiceChargeCalculationPhaseFromString(
              json['calculation_phase'])
          : null,
      taxable: json['taxable'],
      taxes: json['taxes'] != null
          ? (json['taxes'] as List)
              .map((item) => OrderLineItemTax.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (uid != null) body['uid'] = uid;
    if (name != null) body['name'] = name;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (percentage != null) body['percentage'] = percentage.toString();
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (appliedMoney != null) body['applied_money'] = appliedMoney.toJson();
    if (totalMoney != null) body['total_money'] = totalMoney.toJson();
    if (totalTaxMoney != null) body['total_tax_money'] = totalTaxMoney.toJson();
    if (calculationPhase != null)
      body['calculation_phase'] =
          getStringFromOrderServiceChargeCalculationPhase(calculationPhase);
    if (taxable != null) body['taxable'] = taxable;
    if (taxes != null)
      body['taxes'] = taxes.map((item) => item.toJson()).toList();

    return body;
  }
}

class OrderMoneyAmounts {
  final Money totalMoney;
  final Money taxMoney;
  final Money discountMoney;
  final Money tipMoney;
  final Money serviceChargeMoney;

  OrderMoneyAmounts(
      {this.totalMoney,
      this.taxMoney,
      this.discountMoney,
      this.tipMoney,
      this.serviceChargeMoney});

  factory OrderMoneyAmounts.fromJson(Map<String, dynamic> json) {
    return OrderMoneyAmounts(
      totalMoney: json['total_money'] != null
          ? Money.fromJson(json['total_money'])
          : null,
      taxMoney:
          json['tax_money'] != null ? Money.fromJson(json['tax_money']) : null,
      discountMoney: json['discount_money'] != null
          ? Money.fromJson(json['discount_money'])
          : null,
      tipMoney:
          json['tip_money'] != null ? Money.fromJson(json['tip_money']) : null,
      serviceChargeMoney: json['service_charge_money'] != null
          ? Money.fromJson(json['service_charge_money'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (totalMoney != null) body['total_money'] = totalMoney.toJson();
    if (taxMoney != null) body['tax_money'] = taxMoney.toJson();
    if (discountMoney != null) body['discount_money'] = discountMoney.toJson();
    if (tipMoney != null) body['tip_money'] = tipMoney.toJson();
    if (serviceChargeMoney != null)
      body['service_charge_money'] = serviceChargeMoney.toJson();

    return body;
  }
}

class OrderSource {
  final String name;

  OrderSource({this.name});

  factory OrderSource.fromJson(Map<String, dynamic> json) {
    return OrderSource(
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (name != null) body['name'] = name;

    return body;
  }
}

class OrderQuantityUnit {
  final MeasurementUnit measurementUnit;
  final int precision;

  OrderQuantityUnit({
    this.measurementUnit,
    this.precision,
  });

  factory OrderQuantityUnit.fromJson(Map<String, dynamic> json) {
    return OrderQuantityUnit(
      measurementUnit: json['measurement_unit'] != null
          ? MeasurementUnit.fromJson(json['measurement_unit'])
          : null,
      precision: json['precision'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (measurementUnit != null)
      body['measurement_unit'] = measurementUnit.toJson();
    if (precision != null) body['precision'] = precision;

    return body;
  }
}

class OrderFulfillment {
  final OrderFulfillmentType type;
  final OrderFulfillmentState state;
  final OrderFulfillmentPickupDetails pickupDetails;

  OrderFulfillment({this.type, this.state, this.pickupDetails});

  factory OrderFulfillment.fromJson(Map<String, dynamic> json) {
    return OrderFulfillment(
      type: json['type'] != null
          ? getOrderFulfillmentTypeFromString(json['type'])
          : null,
      state: json['state'] != null
          ? getOrderFulfillmentStateFromString(json['state'])
          : null,
      pickupDetails: json['pickup_details'] != null
          ? OrderFulfillmentPickupDetails.fromJson(json['pickup_details'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (type != null) body['type'] = getStringFromOrderFulfillmentType(type);
    if (state != null)
      body['state'] = getStringFromOrderFulfillmentState(state);
    if (pickupDetails != null) body['pickup_details'] = pickupDetails.toJson();

    return body;
  }
}

class OrderFulfillmentPickupDetails {
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

  OrderFulfillmentPickupDetails(
      {this.recipient,
      this.expiresAt,
      this.autoCompleteDuration,
      this.scheduleType,
      this.pickupAt,
      this.pickupWindowDuration,
      this.prepTimeDuration,
      this.note,
      this.placedAt,
      this.acceptedAt,
      this.rejectedAt,
      this.readyAt,
      this.expiredAt,
      this.pickedUpAt,
      this.canceledAt,
      this.cancelReason});

  factory OrderFulfillmentPickupDetails.fromJson(Map<String, dynamic> json) {
    return OrderFulfillmentPickupDetails(
      recipient: json['recipient'] != null
          ? OrderFulfillmentRecipient.fromJson(json['recipient'])
          : null,
      expiresAt: json['expires_at'] != null
          ? DateTime.parse(json['expires_at'])
          : null,
      autoCompleteDuration: json['auto_complete_duration'] != null
          ? parseDuration(json['auto_complete_duration'])
          : null,
      scheduleType: json['schedule_type'] != null
          ? getOrderFulfillmentPickupDetailsScheduleTypeFromString(
              json['schedule_type'])
          : null,
      pickupAt:
          json['pickup_at'] != null ? DateTime.parse(json['pickup_at']) : null,
      pickupWindowDuration: json['pickup_window_duration'] != null
          ? parseDuration(json['pickup_window_duration'])
          : null,
      prepTimeDuration: json['prep_time_duration'] != null
          ? parseDuration(json['prep_time_duration'])
          : null,
      note: json['note'],
      placedAt:
          json['placed_at'] != null ? DateTime.parse(json['placed_at']) : null,
      acceptedAt: json['accepted_at'] != null
          ? DateTime.parse(json['accepted_at'])
          : null,
      rejectedAt: json['rejected_at'] != null
          ? DateTime.parse(json['rejected_at'])
          : null,
      readyAt:
          json['ready_at'] != null ? DateTime.parse(json['ready_at']) : null,
      expiredAt: json['expired_at'] != null
          ? DateTime.parse(json['expired_at'])
          : null,
      pickedUpAt: json['picked_up_at'] != null
          ? DateTime.parse(json['picked_up_at'])
          : null,
      canceledAt: json['canceled_at'] != null
          ? DateTime.parse(json['canceled_at'])
          : null,
      cancelReason: json['cancel_reason'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (recipient != null) body['recipient'] = recipient.toJson();
    if (expiresAt != null) body['expires_at'] = expiresAt.toString();
    if (autoCompleteDuration != null)
      body['auto_complete_duration'] = durationToString(autoCompleteDuration);
    if (scheduleType != null)
      body['schedule_type'] =
          getStringFromOrderFulfillmentPickupDetailsScheduleType(scheduleType);
    if (pickupAt != null) body['pickup_at'] = pickupAt.toString();
    if (pickupWindowDuration != null)
      body['pickup_window_duration'] = durationToString(pickupWindowDuration);
    if (prepTimeDuration != null)
      body['prep_time_duration'] = durationToString(prepTimeDuration);
    if (note != null) body['note'] = note;
    if (placedAt != null) body['placed_at'] = placedAt.toString();
    if (acceptedAt != null) body['accepted_at'] = acceptedAt.toString();
    if (rejectedAt != null) body['rejected_at'] = rejectedAt.toString();
    if (readyAt != null) body['ready_at'] = readyAt.toString();
    if (expiredAt != null) body['expired_at'] = expiredAt.toString();
    if (pickedUpAt != null) body['picked_up_at'] = pickedUpAt.toString();
    if (canceledAt != null) body['canceled_at'] = canceledAt.toString();
    if (cancelReason != null) body['cancel_reason'] = cancelReason;

    return body;
  }
}

class OrderFulfillmentShipmentDetails {
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

  OrderFulfillmentShipmentDetails({
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
    this.trackingUrl
  });

  factory OrderFulfillmentShipmentDetails.fromJson(Map<String, dynamic> json) {
    return OrderFulfillmentShipmentDetails (
      cancelReason: json['cancel_reason'],
      canceledAt: json['canceled_at'] != null
        ? DateTime.parse(json['canceled_at'])
        : null,
      carrier: json['carrier'],
      expectedShippedAt: json['expected_shipped_at'] != null
        ? DateTime.parse(json['expected_shipped_at'])
        : null,
      failedAt: json['failed_at'] != null
        ? DateTime.parse(json['failed_at'])
        : null,
      failureReason: json['failure_reason'],
      inProgressAt: json['in_progress_at'] != null
        ? DateTime.parse(json['in_progress_at'])
        : null,
      packagedAt: json['packaged_at'] != null
        ? DateTime.parse(json['packaged_at'])
        : null,
      placedAt: json['placed_at'] != null
        ? DateTime.parse(json['placed_at'])
        : null,
      recipient: json['recipient'] != null
        ? OrderFulfillmentRecipient.fromJson(json['recipient'])
        : null,
      shippedAt: json['shipped_at'] != null
        ? DateTime.parse(json['shipped_at'])
        : null,
      shippingNote: json['shipping_note'],
      shippingType: json['shipping_type'],
      trackingNumber: json['tracking_number'],
      trackingUrl: json['tracking_url'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (cancelReason != null) body['cancel_reason'] = cancelReason;
    if (canceledAt != null) body['canceled_at'] = canceledAt.toString();
    if (carrier != null) body['carrier'] = carrier;
    if (expectedShippedAt != null) body['expected_shipped_at'] = expectedShippedAt.toString();
    if (failedAt != null) body['failed_at'] = failedAt.toString();
    if (failureReason != null) body['failure_reason'] = failureReason;
    if (inProgressAt != null) body['in_progress_at'] = inProgressAt.toString();
    if (packagedAt != null) body['packaged_at'] = packagedAt.toString();
    if (placedAt != null) body['placed_at'] = placedAt.toString();
    if (recipient != null) body['recipient'] = recipient.toJson();
    if (shippingNote != null) body['shipping_note'] = shippingNote;
    if (shippingType != null) body['shipping_type'] = shippingType;
    if (trackingNumber != null) body['tracking_number'] = trackingNumber;
    if (trackingUrl != null) body['tracking_url'] = trackingUrl;

    return body;
  }
}

class OrderFulfillmentRecipient {
  final String customerId;
  final String displayName;
  final String emailAddress;
  final String phoneNumber;

  OrderFulfillmentRecipient(
      {this.customerId, this.displayName, this.emailAddress, this.phoneNumber});

  factory OrderFulfillmentRecipient.fromJson(Map<String, dynamic> json) {
    return OrderFulfillmentRecipient(
      customerId: json['customer_id'],
      displayName: json['display_name'],
      emailAddress: json['email_address'],
      phoneNumber: json['phone_number'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (customerId != null) body['customer_id'] = customerId;
    if (displayName != null) body['display_name'] = displayName;
    if (emailAddress != null) body['email_address'] = emailAddress;
    if (phoneNumber != null) body['phone_number'] = phoneNumber;

    return body;
  }
}

class OrderRoundingAdjustment {
  final String uid;
  final String name;
  final Money amountMoney;

  OrderRoundingAdjustment({this.uid, this.name, this.amountMoney});

  factory OrderRoundingAdjustment.fromJson(Map<String, dynamic> json) {
    return OrderRoundingAdjustment(
      uid: json['uid'],
      name: json['name'],
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (uid != null) body['uid'] = uid;
    if (name != null) body['source_order_id'] = name;
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();

    return body;
  }
}

/// Helper class to create order object line items.
class OrderLineItemObjectRequest {
  final double quantity;
  final String note;
  final String catalogVariationId;
  final List<String> modifierIds;
  final List<String> taxIds;
  final List<String> discountIds;

  OrderLineItemObjectRequest(
      {this.quantity,
      this.note,
      this.catalogVariationId,
      this.modifierIds,
      this.taxIds,
      this.discountIds});

  Map<String, dynamic> toMap() {
    var body = Map<String, dynamic>();
    if (quantity != null) body['quantity'] = quantity.toString();
    if (note != null) body['note'] = note;
    if (catalogVariationId != null)
      body['catalog_object_id'] = catalogVariationId;
    if (modifierIds != null)
      body['modifiers'] =
          modifierIds.map((id) => {'catalog_object_id': id}).toList();
    if (taxIds != null)
      body['taxes'] = taxIds.map((id) => {'catalog_object_id': id}).toList();
    if (discountIds != null)
      body['discounts'] =
          discountIds.map((id) => {'catalog_object_id': id}).toList();

    return body;
  }
}

class FulfillmentRequest {
  final OrderFulfillmentType fulfillmentType;
  final OrderFulfillmentState fulfillmentState;
  final String customerId;
  final String displayName;
  final String emailAddress;
  final String phoneNumber;
  final DateTime expriesAt;
  final OrderFulfillmentPickupDetailsScheduleType scheduleType;
  final DateTime pickupAt;
  final String note;
  final Duration autoCompleteDuration;
  final Duration pickupWindowDuration;
  final Duration prepTimeDuration;

  FulfillmentRequest({
    this.fulfillmentType,
    this.fulfillmentState,
    this.customerId,
    this.displayName,
    this.emailAddress,
    this.phoneNumber,
    this.expriesAt,
    this.scheduleType,
    this.pickupAt,
    this.note,
    this.autoCompleteDuration,
    this.pickupWindowDuration,
    this.prepTimeDuration,
  });

  Map<String, dynamic> toMap() {
    var body = Map<String, dynamic>();
    var pickupDetails = Map<String, dynamic>();

    if (fulfillmentType != null)
      body['type'] = getStringFromOrderFulfillmentType(fulfillmentType);
    if (fulfillmentState != null)
      body['state'] = getStringFromOrderFulfillmentState(fulfillmentState);

    pickupDetails['recipient'] = Map<String, dynamic>();
    if (customerId != null)
      pickupDetails['recipient']['customer_id'] = customerId;
    if (displayName != null)
      pickupDetails['recipient']['display_name'] = displayName;
    if (emailAddress != null)
      pickupDetails['recipient']['email_address'] = emailAddress;
    if (phoneNumber != null)
      pickupDetails['recipient']['phone_number'] = phoneNumber;

    if (expriesAt != null)
      pickupDetails['expires_at'] = expriesAt.toIso8601String();
    if (scheduleType != null)
      pickupDetails['schedule_type'] =
          getStringFromOrderFulfillmentPickupDetailsScheduleType(scheduleType);
    if (pickupAt != null)
      pickupDetails['pickup_at'] = pickupAt.toIso8601String();
    if (note != null) pickupDetails['note'] = note;
    if (autoCompleteDuration != null)
      pickupDetails['auto_complete_duration'] =
          durationToString(autoCompleteDuration);
    if (pickupWindowDuration != null)
      pickupDetails['pickup_window_duration'] =
          durationToString(pickupWindowDuration);
    if (prepTimeDuration != null)
      pickupDetails['prep_time_duration'] = durationToString(prepTimeDuration);

    body['pickup_details'] = pickupDetails;

    return body;
  }
}

class OrderReturn {
  final String id;
  final String sourceOrderId;
  final List<OrderReturnLineItem> returnLineItems;
  final List<OrderReturnServiceCharge> returnServiceCharges;
  final List<OrderReturnTax> returnTaxes;
  final List<OrderReturnDiscount> returnDiscounts;
  final OrderRoundingAdjustment roundingAdjustment;
  final OrderMoneyAmounts returnAmounts;

  OrderReturn(
      {this.id,
      this.sourceOrderId,
      this.returnLineItems,
      this.returnServiceCharges,
      this.returnTaxes,
      this.returnDiscounts,
      this.roundingAdjustment,
      this.returnAmounts});

  factory OrderReturn.fromJson(Map<String, dynamic> json) {
    return OrderReturn(
      id: json['uid'],
      sourceOrderId: json['source_order_id'],
      returnLineItems: json['return_line_items'] != null
          ? (json['return_line_items'] as List)
              .map((item) => OrderReturnLineItem.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['uid'] = id;
    if (sourceOrderId != null) body['source_order_id'] = sourceOrderId;
    if (returnLineItems != null)
      body['return_line_items'] =
          returnLineItems.map((item) => item.toJson()).toList();
    if (returnServiceCharges != null)
      body['return_service_charges'] =
          returnServiceCharges.map((item) => item.toJson()).toList();
    if (returnTaxes != null)
      body['return_taxes'] = returnTaxes.map((item) => item.toJson()).toList();
    if (returnDiscounts != null)
      body['return_discounts'] =
          returnDiscounts.map((item) => item.toJson()).toList();
    if (roundingAdjustment != null)
      body['rounding_adjustment'] = roundingAdjustment.toJson();
    if (returnAmounts != null) body['return_amounts'] = returnAmounts.toJson();

    return body;
  }
}

class OrderReturnLineItem {
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

  OrderReturnLineItem(
      {this.id,
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
      this.totalMoney});

  factory OrderReturnLineItem.fromJson(Map<String, dynamic> json) {
    return OrderReturnLineItem(
      id: json['uid'],
      sourceLineItemId: json['source_line_item_uid'],
      name: json['name'],
      quantity:
          json['quantity'] != null ? double.parse(json['quantity']) : null,
      quantityUnit: json['quantity_unit'] != null
          ? OrderQuantityUnit.fromJson(json['quantity_unit'])
          : null,
      note: json['note'],
      catalogObjectId: json['catalog_object_id'],
      variationName: json['variation_name'],
      returnModifiers: json['return_modifiers'] != null
          ? (json['return_modifiers'] as List)
              .map((item) => OrderReturnLineItemModifier.fromJson(item))
              .toList()
          : null,
      returnDiscounts: json['return_taxes'] != null
          ? (json['return_taxes'] as List)
              .map((item) => OrderReturnDiscount.fromJson(item))
              .toList()
          : null,
      returnTaxes: json['return_discounts'] != null
          ? (json['return_discounts'] as List)
              .map((item) => OrderReturnTax.fromJson(item))
              .toList()
          : null,
      basePriceMoney: json['base_price_money'] != null
          ? Money.fromJson(json['base_price_money'])
          : null,
      variationTotalPriceMoney: json['variation_total_price_money'] != null
          ? Money.fromJson(json['variation_total_price_money'])
          : null,
      grossReturnMoney: json['gross_return_money'] != null
          ? Money.fromJson(json['gross_return_money'])
          : null,
      totalTaxMoney: json['total_tax_money'] != null
          ? Money.fromJson(json['total_tax_money'])
          : null,
      totalDiscountMoney: json['total_discount_money'] != null
          ? Money.fromJson(json['total_discount_money'])
          : null,
      totalMoney: json['total_money'] != null
          ? Money.fromJson(json['total_money'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['uid'] = id;
    if (sourceLineItemId != null)
      body['source_line_item_uid'] = sourceLineItemId;
    if (name != null) body['name'] = name;
    if (quantity != null) body['quantity'] = quantity.toString();
    if (quantityUnit != null) body['quantity_unit'] = quantityUnit.toJson();
    if (note != null) body['note'] = note;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (variationName != null) body['variation_name'] = variationName;
    if (returnModifiers != null)
      body['return_modifiers'] =
          returnModifiers.map((item) => item.toJson()).toList();
    if (returnTaxes != null)
      body['return_taxes'] = returnTaxes.map((item) => item.toJson()).toList();
    if (returnDiscounts != null)
      body['return_discounts'] =
          returnDiscounts.map((item) => item.toJson()).toList();
    if (basePriceMoney != null)
      body['base_price_money'] = basePriceMoney.toJson();
    if (variationTotalPriceMoney != null)
      body['variation_total_price_money'] = variationTotalPriceMoney.toJson();
    if (grossReturnMoney.toJson() != null)
      body['gross_return_money'] = grossReturnMoney.toJson();
    if (totalTaxMoney != null) body['total_tax_money'] = totalTaxMoney.toJson();
    if (totalDiscountMoney != null)
      body['total_discount_money'] = totalDiscountMoney.toJson();
    if (totalMoney != null) body['total_money'] = totalMoney.toJson();

    return body;
  }
}

class OrderReturnLineItemModifier {
  final String id;
  final String sourceModifierId;
  final String catalogObjectId;
  final String name;
  final Money basePriceMoney;
  final Money totalPriceMoney;

  OrderReturnLineItemModifier(
      {this.id,
      this.sourceModifierId,
      this.catalogObjectId,
      this.name,
      this.basePriceMoney,
      this.totalPriceMoney});

  factory OrderReturnLineItemModifier.fromJson(Map<String, dynamic> json) {
    return OrderReturnLineItemModifier(
      id: json['uid'],
      sourceModifierId: json['source_modifier_uid'],
      catalogObjectId: json['catalog_object_id'],
      name: json['name'],
      basePriceMoney: json['base_price_money'] != null
          ? Money.fromJson(json['base_price_money'])
          : null,
      totalPriceMoney: json['total_price_money'] != null
          ? Money.fromJson(json['total_price_money'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['uid'] = id;
    if (sourceModifierId != null)
      body['source_modifier_uid'] = sourceModifierId;
    if (name != null) body['name'] = name;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (basePriceMoney != null)
      body['base_price_money'] = basePriceMoney.toJson();
    if (totalPriceMoney != null)
      body['total_price_money'] = totalPriceMoney.toJson();

    return body;
  }
}

class OrderReturnTax {
  final String id;
  final String sourceTaxId;
  final String catalogObjectId;
  final String name;
  final OrderLineItemTaxType type;
  final double percentage;
  final Money appliedMoney;
  final OrderLineItemTaxScope scope;

  OrderReturnTax(
      {this.id,
      this.sourceTaxId,
      this.catalogObjectId,
      this.name,
      this.type,
      this.percentage,
      this.appliedMoney,
      this.scope});

  factory OrderReturnTax.fromJson(Map<String, dynamic> json) {
    return OrderReturnTax(
      id: json['uid'],
      sourceTaxId: json['source_tax_uid'],
      catalogObjectId: json['catalog_object_id'],
      name: json['name'],
      type: json['type'] != null
          ? getOrderLineItemTaxTypeFromString(json['type'])
          : null,
      percentage:
          json['percentage'] != null ? double.parse(json['percentage']) : null,
      appliedMoney: json['applied_money'] != null
          ? Money.fromJson(json['applied_money'])
          : null,
      scope: json['scope'] != null
          ? getOrderLineItemTaxScopeFromString(json['scope'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['uid'] = id;
    if (sourceTaxId != null) body['source_tax_uid'] = sourceTaxId;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (name != null) body['name'] = name;
    if (type != null) body['type'] = getStringFromOrderLineItemTaxType(type);
    if (percentage != null) body['percentage'] = percentage.toString();
    if (appliedMoney != null) body['applied_money'] = appliedMoney.toJson();
    if (scope != null)
      body['scope'] = getStringFromOrderLineItemTaxScope(scope);

    return body;
  }
}

class OrderReturnDiscount {
  final String id;
  final String sourceDiscountId;
  final String catalogObjectId;
  final String name;
  final OrderLineItemDiscountType type;
  final double percentage;
  final Money amountMoney;
  final Money appliedMoney;
  final OrderLineItemDiscountScope scope;

  OrderReturnDiscount(
      {this.id,
      this.sourceDiscountId,
      this.catalogObjectId,
      this.name,
      this.type,
      this.percentage,
      this.amountMoney,
      this.appliedMoney,
      this.scope});

  factory OrderReturnDiscount.fromJson(Map<String, dynamic> json) {
    return OrderReturnDiscount(
      id: json['uid'],
      sourceDiscountId: json['source_discount_uid'],
      catalogObjectId: json['catalog_object_id'],
      name: json['name'],
      type: json['type'] != null
          ? getOrderLineItemDiscountTypeFromString(json['type'])
          : null,
      percentage:
          json['percentage'] != null ? double.parse(json['percentage']) : null,
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      appliedMoney: json['applied_money'] != null
          ? Money.fromJson(json['applied_money'])
          : null,
      scope: json['scope'] != null
          ? getOrderLineItemDiscountScopeFromString(json['scope'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['uid'] = id;
    if (sourceDiscountId != null)
      body['source_discount_uid'] = sourceDiscountId;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (name != null) body['name'] = name;
    if (type != null)
      body['type'] = getStringFromOrderLineItemDiscountType(type);
    if (percentage != null) body['percentage'] = percentage.toString();
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (appliedMoney != null) body['applied_money'] = appliedMoney.toJson();
    if (scope != null)
      body['scope'] = getStringFromOrderLineItemDiscountScope(scope);

    return body;
  }
}

class OrderReturnServiceCharge {
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

  OrderReturnServiceCharge(
      {this.id,
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
      this.returnTaxes});

  factory OrderReturnServiceCharge.fromJson(Map<String, dynamic> json) {
    return OrderReturnServiceCharge(
      id: json['uid'],
      sourceServiceChargeId: json['source_service_charge_uid'],
      catalogObjectId: json['catalog_object_id'],
      name: json['name'],
      percentage:
          json['percentage'] != null ? double.parse(json['percentage']) : null,
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      appliedMoney: json['applied_money'] != null
          ? Money.fromJson(json['applied_money'])
          : null,
      totalMoney: json['total_money'] != null
          ? Money.fromJson(json['total_money'])
          : null,
      totalTaxMoney: json['total_tax_money'] != null
          ? Money.fromJson(json['total_tax_money'])
          : null,
      calculationPhase: json['calculation_phase'] != null
          ? getOrderServiceChargeCalculationPhaseFromString(
              json['calculation_phase'])
          : null,
      taxable: json['taxable'],
      returnTaxes: json['return_taxes'] != null
          ? (json['return_taxes'] as List)
              .map((item) => OrderReturnTax.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['uid'] = id;
    if (sourceServiceChargeId != null)
      body['source_service_charge_uid'] = sourceServiceChargeId;
    if (name != null) body['name'] = name;
    if (catalogObjectId != null) body['catalog_object_id'] = catalogObjectId;
    if (percentage != null) body['percentage'] = percentage.toString();
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (appliedMoney != null) body['applied_money'] = appliedMoney.toJson();
    if (totalMoney != null) body['total_money'] = totalMoney.toJson();
    if (totalTaxMoney != null) body['total_tax_money'] = totalTaxMoney.toJson();
    if (calculationPhase != null)
      body['calculation_phase'] =
          getStringFromOrderServiceChargeCalculationPhase(calculationPhase);
    if (taxable != null) body['taxable'] = taxable;
    if (returnTaxes != null)
      body['return_taxes'] = returnTaxes.map((item) => item.toJson()).toList();

    return body;
  }
}
