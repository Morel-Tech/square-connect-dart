// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      referenceId: json['referenceId'] as String,
      source: OrderSource.fromJson(json['source'] as Map<String, dynamic>),
      customerId: json['customerId'] as String,
      lineItems: (json['lineItems'] as List<dynamic>)
          .map((e) => OrderLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxes: (json['taxes'] as List<dynamic>)
          .map((e) => OrderLineItemTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) => OrderLineItemDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceCharges: (json['serviceCharges'] as List<dynamic>)
          .map((e) => OrderServiceCharge.fromJson(e as Map<String, dynamic>))
          .toList(),
      fulfillments: (json['fulfillments'] as List<dynamic>)
          .map((e) => OrderFulfillment.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnAmounts: OrderMoneyAmounts.fromJson(
          json['returnAmounts'] as Map<String, dynamic>),
      netAmounts: OrderMoneyAmounts.fromJson(
          json['netAmounts'] as Map<String, dynamic>),
      roundingAdjustment: OrderRoundingAdjustment.fromJson(
          json['roundingAdjustment'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      closedAt: DateTime.parse(json['closedAt'] as String),
      state: _$enumDecode(_$OrderStateEnumMap, json['state']),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      totalTaxMoney:
          Money.fromJson(json['totalTaxMoney'] as Map<String, dynamic>),
      totalDiscountMoney:
          Money.fromJson(json['totalDiscountMoney'] as Map<String, dynamic>),
      totalServiceChargeMoney: Money.fromJson(
          json['totalServiceChargeMoney'] as Map<String, dynamic>),
      tenders: (json['tenders'] as List<dynamic>)
          .map((e) => Tender.fromJson(e as Map<String, dynamic>))
          .toList(),
      refunds: (json['refunds'] as List<dynamic>)
          .map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
      returns: (json['returns'] as List<dynamic>)
          .map((e) => OrderReturn.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as int,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'referenceId': instance.referenceId,
      'source': instance.source,
      'customerId': instance.customerId,
      'lineItems': instance.lineItems,
      'taxes': instance.taxes,
      'discounts': instance.discounts,
      'serviceCharges': instance.serviceCharges,
      'fulfillments': instance.fulfillments,
      'returns': instance.returns,
      'returnAmounts': instance.returnAmounts,
      'netAmounts': instance.netAmounts,
      'roundingAdjustment': instance.roundingAdjustment,
      'tenders': instance.tenders,
      'refunds': instance.refunds,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'closedAt': instance.closedAt.toIso8601String(),
      'state': _$OrderStateEnumMap[instance.state],
      'totalMoney': instance.totalMoney,
      'totalTaxMoney': instance.totalTaxMoney,
      'totalDiscountMoney': instance.totalDiscountMoney,
      'totalServiceChargeMoney': instance.totalServiceChargeMoney,
      'version': instance.version,
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

const _$OrderStateEnumMap = {
  OrderState.open: 'OPEN',
  OrderState.completed: 'COMPLETED',
  OrderState.canceled: 'CANCELED',
};

OrderEntry _$OrderEntryFromJson(Map<String, dynamic> json) => OrderEntry(
      orderId: json['orderId'] as String,
      locationId: json['locationId'] as String,
      version: json['version'] as int,
    );

Map<String, dynamic> _$OrderEntryToJson(OrderEntry instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'locationId': instance.locationId,
      'version': instance.version,
    };

OrderLineItem _$OrderLineItemFromJson(Map<String, dynamic> json) =>
    OrderLineItem(
      uid: json['uid'] as String,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      orderQuantityUnit: OrderQuantityUnit.fromJson(
          json['orderQuantityUnit'] as Map<String, dynamic>),
      note: json['note'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      variationName: json['variationName'] as String,
      modifiers: (json['modifiers'] as List<dynamic>)
          .map((e) => OrderLineItemModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxes: (json['taxes'] as List<dynamic>)
          .map((e) => OrderLineItemTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) => OrderLineItemDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      basePriceMoney:
          Money.fromJson(json['basePriceMoney'] as Map<String, dynamic>),
      variationTotalPriceMoney: Money.fromJson(
          json['variationTotalPriceMoney'] as Map<String, dynamic>),
      grossSalesMoney:
          Money.fromJson(json['grossSalesMoney'] as Map<String, dynamic>),
      totalTaxMoney:
          Money.fromJson(json['totalTaxMoney'] as Map<String, dynamic>),
      totalDiscountMoney:
          Money.fromJson(json['totalDiscountMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemToJson(OrderLineItem instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'quantity': instance.quantity,
      'orderQuantityUnit': instance.orderQuantityUnit,
      'note': instance.note,
      'catalogObjectId': instance.catalogObjectId,
      'variationName': instance.variationName,
      'modifiers': instance.modifiers,
      'taxes': instance.taxes,
      'discounts': instance.discounts,
      'basePriceMoney': instance.basePriceMoney,
      'variationTotalPriceMoney': instance.variationTotalPriceMoney,
      'grossSalesMoney': instance.grossSalesMoney,
      'totalTaxMoney': instance.totalTaxMoney,
      'totalDiscountMoney': instance.totalDiscountMoney,
      'totalMoney': instance.totalMoney,
    };

OrderLineItemTax _$OrderLineItemTaxFromJson(Map<String, dynamic> json) =>
    OrderLineItemTax(
      uid: json['uid'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      name: json['name'] as String,
      type: _$enumDecode(_$OrderLineItemTaxTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num).toDouble(),
      appliedMoney:
          Money.fromJson(json['appliedMoney'] as Map<String, dynamic>),
      scope: _$enumDecode(_$OrderLineItemTaxScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderLineItemTaxToJson(OrderLineItemTax instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'catalogObjectId': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemTaxTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'appliedMoney': instance.appliedMoney,
      'scope': _$OrderLineItemTaxScopeEnumMap[instance.scope],
    };

const _$OrderLineItemTaxTypeEnumMap = {
  OrderLineItemTaxType.unknownTax: 'UNKNOWN_TAX',
  OrderLineItemTaxType.additive: 'ADDITIVE',
  OrderLineItemTaxType.inclusive: 'INCLUSIVE',
};

const _$OrderLineItemTaxScopeEnumMap = {
  OrderLineItemTaxScope.otherTaxScope: 'OTHER_TAX_SCOPE',
  OrderLineItemTaxScope.lineItem: 'LINE_ITEM',
  OrderLineItemTaxScope.order: 'ORDER',
};

OrderLineItemDiscount _$OrderLineItemDiscountFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemDiscount(
      uid: json['uid'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      name: json['name'] as String,
      type: _$enumDecode(_$OrderLineItemDiscountTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appliedMoney:
          Money.fromJson(json['appliedMoney'] as Map<String, dynamic>),
      scope: _$enumDecode(_$OrderLineItemDiscountScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderLineItemDiscountToJson(
        OrderLineItemDiscount instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'catalogObjectId': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemDiscountTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'amountMoney': instance.amountMoney,
      'appliedMoney': instance.appliedMoney,
      'scope': _$OrderLineItemDiscountScopeEnumMap[instance.scope],
    };

const _$OrderLineItemDiscountTypeEnumMap = {
  OrderLineItemDiscountType.unknownDiscount: 'UNKNOWN_DISCOUNT',
  OrderLineItemDiscountType.fixedPercentage: 'FIXED_PERCENTAGE',
  OrderLineItemDiscountType.fixedAmount: 'FIXED_AMOUNT',
  OrderLineItemDiscountType.variablePercentage: 'VARIABLE_PERCENTAGE',
  OrderLineItemDiscountType.variableAmount: 'VARIABLE_AMOUNT',
};

const _$OrderLineItemDiscountScopeEnumMap = {
  OrderLineItemDiscountScope.otherDiscountScope: 'OTHER_DISCOUNT_SCOPE',
  OrderLineItemDiscountScope.lineItem: 'LINE_ITEM',
  OrderLineItemDiscountScope.order: 'ORDER',
};

OrderLineItemModifier _$OrderLineItemModifierFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemModifier(
      uid: json['uid'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      name: json['name'] as String,
      basePriceMoney:
          Money.fromJson(json['basePriceMoney'] as Map<String, dynamic>),
      totalPriceMoney:
          Money.fromJson(json['totalPriceMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemModifierToJson(
        OrderLineItemModifier instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'catalogObjectId': instance.catalogObjectId,
      'name': instance.name,
      'basePriceMoney': instance.basePriceMoney,
      'totalPriceMoney': instance.totalPriceMoney,
    };

OrderServiceCharge _$OrderServiceChargeFromJson(Map<String, dynamic> json) =>
    OrderServiceCharge(
      uid: json['uid'] as String,
      name: json['name'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appliedMoney:
          Money.fromJson(json['appliedMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      totalTaxMoney:
          Money.fromJson(json['totalTaxMoney'] as Map<String, dynamic>),
      calculationPhase: _$enumDecode(
          _$OrderServiceChargeCalculationPhaseEnumMap,
          json['calculationPhase']),
      taxable: json['taxable'] as bool,
      taxes: (json['taxes'] as List<dynamic>)
          .map((e) => OrderLineItemTax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderServiceChargeToJson(OrderServiceCharge instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'catalogObjectId': instance.catalogObjectId,
      'percentage': instance.percentage,
      'amountMoney': instance.amountMoney,
      'appliedMoney': instance.appliedMoney,
      'totalMoney': instance.totalMoney,
      'totalTaxMoney': instance.totalTaxMoney,
      'calculationPhase': _$OrderServiceChargeCalculationPhaseEnumMap[
          instance.calculationPhase],
      'taxable': instance.taxable,
      'taxes': instance.taxes,
    };

const _$OrderServiceChargeCalculationPhaseEnumMap = {
  OrderServiceChargeCalculationPhase.subtotalPhase: 'SUBTOTAL_PHASE',
  OrderServiceChargeCalculationPhase.totalPhase: 'TOTAL_PHASE',
};

OrderMoneyAmounts _$OrderMoneyAmountsFromJson(Map<String, dynamic> json) =>
    OrderMoneyAmounts(
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      taxMoney: Money.fromJson(json['taxMoney'] as Map<String, dynamic>),
      discountMoney:
          Money.fromJson(json['discountMoney'] as Map<String, dynamic>),
      tipMoney: Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      serviceChargeMoney:
          Money.fromJson(json['serviceChargeMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderMoneyAmountsToJson(OrderMoneyAmounts instance) =>
    <String, dynamic>{
      'totalMoney': instance.totalMoney,
      'taxMoney': instance.taxMoney,
      'discountMoney': instance.discountMoney,
      'tipMoney': instance.tipMoney,
      'serviceChargeMoney': instance.serviceChargeMoney,
    };

OrderSource _$OrderSourceFromJson(Map<String, dynamic> json) => OrderSource(
      name: json['name'] as String,
    );

Map<String, dynamic> _$OrderSourceToJson(OrderSource instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

OrderQuantityUnit _$OrderQuantityUnitFromJson(Map<String, dynamic> json) =>
    OrderQuantityUnit(
      measurementUnit: MeasurementUnit.fromJson(
          json['measurementUnit'] as Map<String, dynamic>),
      precision: json['precision'] as int,
    );

Map<String, dynamic> _$OrderQuantityUnitToJson(OrderQuantityUnit instance) =>
    <String, dynamic>{
      'measurementUnit': instance.measurementUnit,
      'precision': instance.precision,
    };

OrderFulfillment _$OrderFulfillmentFromJson(Map<String, dynamic> json) =>
    OrderFulfillment(
      type: _$enumDecode(_$OrderFulfillmentTypeEnumMap, json['type']),
      state: _$enumDecode(_$OrderFulfillmentStateEnumMap, json['state']),
      pickupDetails: OrderFulfillmentPickupDetails.fromJson(
          json['pickupDetails'] as Map<String, dynamic>),
      shipmentDetails: OrderFulfillmentShipmentDetails.fromJson(
          json['shipmentDetails'] as Map<String, dynamic>),
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$OrderFulfillmentToJson(OrderFulfillment instance) =>
    <String, dynamic>{
      'type': _$OrderFulfillmentTypeEnumMap[instance.type],
      'state': _$OrderFulfillmentStateEnumMap[instance.state],
      'pickupDetails': instance.pickupDetails,
      'shipmentDetails': instance.shipmentDetails,
      'uid': instance.uid,
    };

const _$OrderFulfillmentTypeEnumMap = {
  OrderFulfillmentType.pickup: 'PICKUP',
  OrderFulfillmentType.shipment: 'SHIPMENT',
};

const _$OrderFulfillmentStateEnumMap = {
  OrderFulfillmentState.proposed: 'PROPOSED',
  OrderFulfillmentState.reserved: 'RESERVED',
  OrderFulfillmentState.prepared: 'PREPARED',
  OrderFulfillmentState.completed: 'COMPLETED',
  OrderFulfillmentState.canceled: 'CANCELED',
  OrderFulfillmentState.failed: 'FAILED',
};

OrderFulfillmentPickupDetails _$OrderFulfillmentPickupDetailsFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentPickupDetails(
      recipient: OrderFulfillmentRecipient.fromJson(
          json['recipient'] as Map<String, dynamic>),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      autoCompleteDuration:
          Duration(microseconds: json['autoCompleteDuration'] as int),
      scheduleType: _$enumDecode(
          _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap,
          json['scheduleType']),
      pickupAt: DateTime.parse(json['pickupAt'] as String),
      pickupWindowDuration:
          Duration(microseconds: json['pickupWindowDuration'] as int),
      prepTimeDuration: Duration(microseconds: json['prepTimeDuration'] as int),
      note: json['note'] as String,
      placedAt: DateTime.parse(json['placedAt'] as String),
      acceptedAt: DateTime.parse(json['acceptedAt'] as String),
      rejectedAt: DateTime.parse(json['rejectedAt'] as String),
      readyAt: DateTime.parse(json['readyAt'] as String),
      expiredAt: DateTime.parse(json['expiredAt'] as String),
      pickedUpAt: DateTime.parse(json['pickedUpAt'] as String),
      canceledAt: DateTime.parse(json['canceledAt'] as String),
      cancelReason: json['cancelReason'] as String,
    );

Map<String, dynamic> _$OrderFulfillmentPickupDetailsToJson(
        OrderFulfillmentPickupDetails instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'autoCompleteDuration': instance.autoCompleteDuration.inMicroseconds,
      'scheduleType': _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap[
          instance.scheduleType],
      'pickupAt': instance.pickupAt.toIso8601String(),
      'pickupWindowDuration': instance.pickupWindowDuration.inMicroseconds,
      'prepTimeDuration': instance.prepTimeDuration.inMicroseconds,
      'note': instance.note,
      'placedAt': instance.placedAt.toIso8601String(),
      'acceptedAt': instance.acceptedAt.toIso8601String(),
      'rejectedAt': instance.rejectedAt.toIso8601String(),
      'readyAt': instance.readyAt.toIso8601String(),
      'expiredAt': instance.expiredAt.toIso8601String(),
      'pickedUpAt': instance.pickedUpAt.toIso8601String(),
      'canceledAt': instance.canceledAt.toIso8601String(),
      'cancelReason': instance.cancelReason,
    };

const _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap = {
  OrderFulfillmentPickupDetailsScheduleType.scheduled: 'SCHEDULED',
  OrderFulfillmentPickupDetailsScheduleType.asap: 'ASAP',
};

OrderFulfillmentShipmentDetails _$OrderFulfillmentShipmentDetailsFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentShipmentDetails(
      cancelReason: json['cancelReason'] as String,
      canceledAt: DateTime.parse(json['canceledAt'] as String),
      carrier: json['carrier'] as String,
      expectedShippedAt: DateTime.parse(json['expectedShippedAt'] as String),
      failedAt: DateTime.parse(json['failedAt'] as String),
      failureReason: DateTime.parse(json['failureReason'] as String),
      inProgressAt: DateTime.parse(json['inProgressAt'] as String),
      packagedAt: DateTime.parse(json['packagedAt'] as String),
      placedAt: DateTime.parse(json['placedAt'] as String),
      recipient: OrderFulfillmentRecipient.fromJson(
          json['recipient'] as Map<String, dynamic>),
      shippedAt: DateTime.parse(json['shippedAt'] as String),
      shippingNote: json['shippingNote'] as String,
      shippingType: json['shippingType'] as String,
      trackingNumber: json['trackingNumber'] as String,
      trackingUrl: json['trackingUrl'] as String,
    );

Map<String, dynamic> _$OrderFulfillmentShipmentDetailsToJson(
        OrderFulfillmentShipmentDetails instance) =>
    <String, dynamic>{
      'cancelReason': instance.cancelReason,
      'canceledAt': instance.canceledAt.toIso8601String(),
      'carrier': instance.carrier,
      'expectedShippedAt': instance.expectedShippedAt.toIso8601String(),
      'failedAt': instance.failedAt.toIso8601String(),
      'failureReason': instance.failureReason.toIso8601String(),
      'inProgressAt': instance.inProgressAt.toIso8601String(),
      'packagedAt': instance.packagedAt.toIso8601String(),
      'placedAt': instance.placedAt.toIso8601String(),
      'recipient': instance.recipient,
      'shippedAt': instance.shippedAt.toIso8601String(),
      'shippingNote': instance.shippingNote,
      'shippingType': instance.shippingType,
      'trackingNumber': instance.trackingNumber,
      'trackingUrl': instance.trackingUrl,
    };

OrderFulfillmentRecipient _$OrderFulfillmentRecipientFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentRecipient(
      customerId: json['customerId'] as String,
      displayName: json['displayName'] as String,
      emailAddress: json['emailAddress'] as String,
      phoneNumber: json['phoneNumber'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderFulfillmentRecipientToJson(
        OrderFulfillmentRecipient instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'displayName': instance.displayName,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };

OrderRoundingAdjustment _$OrderRoundingAdjustmentFromJson(
        Map<String, dynamic> json) =>
    OrderRoundingAdjustment(
      uid: json['uid'] as String,
      name: json['name'] as String,
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderRoundingAdjustmentToJson(
        OrderRoundingAdjustment instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'amountMoney': instance.amountMoney,
    };

OrderReturn _$OrderReturnFromJson(Map<String, dynamic> json) => OrderReturn(
      id: json['id'] as String,
      sourceOrderId: json['sourceOrderId'] as String,
      returnLineItems: (json['returnLineItems'] as List<dynamic>)
          .map((e) => OrderReturnLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnServiceCharges: (json['returnServiceCharges'] as List<dynamic>)
          .map((e) =>
              OrderReturnServiceCharge.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnTaxes: (json['returnTaxes'] as List<dynamic>)
          .map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnDiscounts: (json['returnDiscounts'] as List<dynamic>)
          .map((e) => OrderReturnDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundingAdjustment: OrderRoundingAdjustment.fromJson(
          json['roundingAdjustment'] as Map<String, dynamic>),
      returnAmounts: OrderMoneyAmounts.fromJson(
          json['returnAmounts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReturnToJson(OrderReturn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceOrderId': instance.sourceOrderId,
      'returnLineItems': instance.returnLineItems,
      'returnServiceCharges': instance.returnServiceCharges,
      'returnTaxes': instance.returnTaxes,
      'returnDiscounts': instance.returnDiscounts,
      'roundingAdjustment': instance.roundingAdjustment,
      'returnAmounts': instance.returnAmounts,
    };

OrderReturnLineItem _$OrderReturnLineItemFromJson(Map<String, dynamic> json) =>
    OrderReturnLineItem(
      id: json['id'] as String,
      sourceLineItemId: json['sourceLineItemId'] as String,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      quantityUnit: OrderQuantityUnit.fromJson(
          json['quantityUnit'] as Map<String, dynamic>),
      note: json['note'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      variationName: json['variationName'] as String,
      returnModifiers: (json['returnModifiers'] as List<dynamic>)
          .map((e) =>
              OrderReturnLineItemModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnTaxes: (json['returnTaxes'] as List<dynamic>)
          .map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnDiscounts: (json['returnDiscounts'] as List<dynamic>)
          .map((e) => OrderReturnDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      basePriceMoney:
          Money.fromJson(json['basePriceMoney'] as Map<String, dynamic>),
      variationTotalPriceMoney: Money.fromJson(
          json['variationTotalPriceMoney'] as Map<String, dynamic>),
      grossReturnMoney:
          Money.fromJson(json['grossReturnMoney'] as Map<String, dynamic>),
      totalTaxMoney:
          Money.fromJson(json['totalTaxMoney'] as Map<String, dynamic>),
      totalDiscountMoney:
          Money.fromJson(json['totalDiscountMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReturnLineItemToJson(
        OrderReturnLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceLineItemId': instance.sourceLineItemId,
      'name': instance.name,
      'quantity': instance.quantity,
      'quantityUnit': instance.quantityUnit,
      'note': instance.note,
      'catalogObjectId': instance.catalogObjectId,
      'variationName': instance.variationName,
      'returnModifiers': instance.returnModifiers,
      'returnTaxes': instance.returnTaxes,
      'returnDiscounts': instance.returnDiscounts,
      'basePriceMoney': instance.basePriceMoney,
      'variationTotalPriceMoney': instance.variationTotalPriceMoney,
      'grossReturnMoney': instance.grossReturnMoney,
      'totalTaxMoney': instance.totalTaxMoney,
      'totalDiscountMoney': instance.totalDiscountMoney,
      'totalMoney': instance.totalMoney,
    };

OrderReturnLineItemModifier _$OrderReturnLineItemModifierFromJson(
        Map<String, dynamic> json) =>
    OrderReturnLineItemModifier(
      id: json['id'] as String,
      sourceModifierId: json['sourceModifierId'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      name: json['name'] as String,
      basePriceMoney:
          Money.fromJson(json['basePriceMoney'] as Map<String, dynamic>),
      totalPriceMoney:
          Money.fromJson(json['totalPriceMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReturnLineItemModifierToJson(
        OrderReturnLineItemModifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceModifierId': instance.sourceModifierId,
      'catalogObjectId': instance.catalogObjectId,
      'name': instance.name,
      'basePriceMoney': instance.basePriceMoney,
      'totalPriceMoney': instance.totalPriceMoney,
    };

OrderReturnTax _$OrderReturnTaxFromJson(Map<String, dynamic> json) =>
    OrderReturnTax(
      id: json['id'] as String,
      sourceTaxId: json['sourceTaxId'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      name: json['name'] as String,
      type: _$enumDecode(_$OrderLineItemTaxTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num).toDouble(),
      appliedMoney:
          Money.fromJson(json['appliedMoney'] as Map<String, dynamic>),
      scope: _$enumDecode(_$OrderLineItemTaxScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderReturnTaxToJson(OrderReturnTax instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceTaxId': instance.sourceTaxId,
      'catalogObjectId': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemTaxTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'appliedMoney': instance.appliedMoney,
      'scope': _$OrderLineItemTaxScopeEnumMap[instance.scope],
    };

OrderReturnDiscount _$OrderReturnDiscountFromJson(Map<String, dynamic> json) =>
    OrderReturnDiscount(
      id: json['id'] as String,
      sourceDiscountId: json['sourceDiscountId'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      name: json['name'] as String,
      type: _$enumDecode(_$OrderLineItemDiscountTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appliedMoney:
          Money.fromJson(json['appliedMoney'] as Map<String, dynamic>),
      scope: _$enumDecode(_$OrderLineItemDiscountScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderReturnDiscountToJson(
        OrderReturnDiscount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceDiscountId': instance.sourceDiscountId,
      'catalogObjectId': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemDiscountTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'amountMoney': instance.amountMoney,
      'appliedMoney': instance.appliedMoney,
      'scope': _$OrderLineItemDiscountScopeEnumMap[instance.scope],
    };

OrderReturnServiceCharge _$OrderReturnServiceChargeFromJson(
        Map<String, dynamic> json) =>
    OrderReturnServiceCharge(
      id: json['id'] as String,
      sourceServiceChargeId: json['sourceServiceChargeId'] as String,
      catalogObjectId: json['catalogObjectId'] as String,
      name: json['name'] as String,
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appliedMoney:
          Money.fromJson(json['appliedMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      totalTaxMoney:
          Money.fromJson(json['totalTaxMoney'] as Map<String, dynamic>),
      calculationPhase: _$enumDecode(
          _$OrderServiceChargeCalculationPhaseEnumMap,
          json['calculationPhase']),
      taxable: json['taxable'] as bool,
      returnTaxes: (json['returnTaxes'] as List<dynamic>)
          .map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderReturnServiceChargeToJson(
        OrderReturnServiceCharge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceServiceChargeId': instance.sourceServiceChargeId,
      'catalogObjectId': instance.catalogObjectId,
      'name': instance.name,
      'percentage': instance.percentage,
      'amountMoney': instance.amountMoney,
      'appliedMoney': instance.appliedMoney,
      'totalMoney': instance.totalMoney,
      'totalTaxMoney': instance.totalTaxMoney,
      'calculationPhase': _$OrderServiceChargeCalculationPhaseEnumMap[
          instance.calculationPhase],
      'taxable': instance.taxable,
      'returnTaxes': instance.returnTaxes,
    };
