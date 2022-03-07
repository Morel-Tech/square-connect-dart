// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderEntry _$OrderEntryFromJson(Map<String, dynamic> json) => OrderEntry(
      orderId: json['order_id'] as String,
      locationId: json['location_id'] as String,
      version: json['version'] as int,
    );

Map<String, dynamic> _$OrderEntryToJson(OrderEntry instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'location_id': instance.locationId,
      'version': instance.version,
    };

OrderLineItemDiscount _$OrderLineItemDiscountFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemDiscount(
      uid: json['uid'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      name: json['name'] as String,
      type: _$enumDecode(_$OrderLineItemDiscountTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appliedMoney:
          Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      scope: _$enumDecode(_$OrderLineItemDiscountScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderLineItemDiscountToJson(
        OrderLineItemDiscount instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemDiscountTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'amount_money': instance.amountMoney.toJson(),
      'applied_money': instance.appliedMoney.toJson(),
      'scope': _$OrderLineItemDiscountScopeEnumMap[instance.scope],
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

OrderMoneyAmounts _$OrderMoneyAmountsFromJson(Map<String, dynamic> json) =>
    OrderMoneyAmounts(
      totalMoney: Money.fromJson(json['total_money'] as Map<String, dynamic>),
      taxMoney: Money.fromJson(json['tax_money'] as Map<String, dynamic>),
      discountMoney:
          Money.fromJson(json['discount_money'] as Map<String, dynamic>),
      tipMoney: Money.fromJson(json['tip_money'] as Map<String, dynamic>),
      serviceChargeMoney:
          Money.fromJson(json['service_charge_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderMoneyAmountsToJson(OrderMoneyAmounts instance) =>
    <String, dynamic>{
      'total_money': instance.totalMoney.toJson(),
      'tax_money': instance.taxMoney.toJson(),
      'discount_money': instance.discountMoney.toJson(),
      'tip_money': instance.tipMoney.toJson(),
      'service_charge_money': instance.serviceChargeMoney.toJson(),
    };

OrderFulfillmentShipmentDetails _$OrderFulfillmentShipmentDetailsFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentShipmentDetails(
      cancelReason: json['cancel_reason'] as String,
      canceledAt: DateTime.parse(json['canceled_at'] as String),
      carrier: json['carrier'] as String,
      expectedShippedAt: DateTime.parse(json['expected_shipped_at'] as String),
      failedAt: DateTime.parse(json['failed_at'] as String),
      failureReason: DateTime.parse(json['failure_reason'] as String),
      inProgressAt: DateTime.parse(json['in_progress_at'] as String),
      packagedAt: DateTime.parse(json['packaged_at'] as String),
      placedAt: DateTime.parse(json['placed_at'] as String),
      recipient: OrderFulfillmentRecipient.fromJson(
          json['recipient'] as Map<String, dynamic>),
      shippedAt: DateTime.parse(json['shipped_at'] as String),
      shippingNote: json['shipping_note'] as String,
      shippingType: json['shipping_type'] as String,
      trackingNumber: json['tracking_number'] as String,
      trackingUrl: json['tracking_url'] as String,
    );

Map<String, dynamic> _$OrderFulfillmentShipmentDetailsToJson(
        OrderFulfillmentShipmentDetails instance) =>
    <String, dynamic>{
      'cancel_reason': instance.cancelReason,
      'canceled_at': instance.canceledAt.toIso8601String(),
      'carrier': instance.carrier,
      'expected_shipped_at': instance.expectedShippedAt.toIso8601String(),
      'failed_at': instance.failedAt.toIso8601String(),
      'failure_reason': instance.failureReason.toIso8601String(),
      'in_progress_at': instance.inProgressAt.toIso8601String(),
      'packaged_at': instance.packagedAt.toIso8601String(),
      'placed_at': instance.placedAt.toIso8601String(),
      'recipient': instance.recipient.toJson(),
      'shipped_at': instance.shippedAt.toIso8601String(),
      'shipping_note': instance.shippingNote,
      'shipping_type': instance.shippingType,
      'tracking_number': instance.trackingNumber,
      'tracking_url': instance.trackingUrl,
    };

OrderRoundingAdjustment _$OrderRoundingAdjustmentFromJson(
        Map<String, dynamic> json) =>
    OrderRoundingAdjustment(
      uid: json['uid'] as String,
      name: json['name'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderRoundingAdjustmentToJson(
        OrderRoundingAdjustment instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'amount_money': instance.amountMoney.toJson(),
    };

OrderReturn _$OrderReturnFromJson(Map<String, dynamic> json) => OrderReturn(
      id: json['id'] as String,
      sourceOrderId: json['source_order_id'] as String,
      returnLineItems: (json['return_line_items'] as List<dynamic>)
          .map((e) => OrderReturnLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnServiceCharges: (json['return_service_charges'] as List<dynamic>)
          .map((e) =>
              OrderReturnServiceCharge.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnTaxes: (json['return_taxes'] as List<dynamic>)
          .map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnDiscounts: (json['return_discounts'] as List<dynamic>)
          .map((e) => OrderReturnDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundingAdjustment: OrderRoundingAdjustment.fromJson(
          json['rounding_adjustment'] as Map<String, dynamic>),
      returnAmounts: OrderMoneyAmounts.fromJson(
          json['return_amounts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReturnToJson(OrderReturn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_order_id': instance.sourceOrderId,
      'return_line_items':
          instance.returnLineItems.map((e) => e.toJson()).toList(),
      'return_service_charges':
          instance.returnServiceCharges.map((e) => e.toJson()).toList(),
      'return_taxes': instance.returnTaxes.map((e) => e.toJson()).toList(),
      'return_discounts':
          instance.returnDiscounts.map((e) => e.toJson()).toList(),
      'rounding_adjustment': instance.roundingAdjustment.toJson(),
      'return_amounts': instance.returnAmounts.toJson(),
    };

OrderReturnLineItem _$OrderReturnLineItemFromJson(Map<String, dynamic> json) =>
    OrderReturnLineItem(
      id: json['id'] as String,
      sourceLineItemId: json['source_line_item_id'] as String,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      quantityUnit: OrderQuantityUnit.fromJson(
          json['quantity_unit'] as Map<String, dynamic>),
      note: json['note'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      variationName: json['variation_name'] as String,
      returnModifiers: (json['return_modifiers'] as List<dynamic>)
          .map((e) =>
              OrderReturnLineItemModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnTaxes: (json['return_taxes'] as List<dynamic>)
          .map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnDiscounts: (json['return_discounts'] as List<dynamic>)
          .map((e) => OrderReturnDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      basePriceMoney:
          Money.fromJson(json['base_price_money'] as Map<String, dynamic>),
      variationTotalPriceMoney: Money.fromJson(
          json['variation_total_price_money'] as Map<String, dynamic>),
      grossReturnMoney:
          Money.fromJson(json['gross_return_money'] as Map<String, dynamic>),
      totalTaxMoney:
          Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      totalDiscountMoney:
          Money.fromJson(json['total_discount_money'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['total_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReturnLineItemToJson(
        OrderReturnLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_line_item_id': instance.sourceLineItemId,
      'name': instance.name,
      'quantity': instance.quantity,
      'quantity_unit': instance.quantityUnit.toJson(),
      'note': instance.note,
      'catalog_object_id': instance.catalogObjectId,
      'variation_name': instance.variationName,
      'return_modifiers':
          instance.returnModifiers.map((e) => e.toJson()).toList(),
      'return_taxes': instance.returnTaxes.map((e) => e.toJson()).toList(),
      'return_discounts':
          instance.returnDiscounts.map((e) => e.toJson()).toList(),
      'base_price_money': instance.basePriceMoney.toJson(),
      'variation_total_price_money': instance.variationTotalPriceMoney.toJson(),
      'gross_return_money': instance.grossReturnMoney.toJson(),
      'total_tax_money': instance.totalTaxMoney.toJson(),
      'total_discount_money': instance.totalDiscountMoney.toJson(),
      'total_money': instance.totalMoney.toJson(),
    };

OrderReturnLineItemModifier _$OrderReturnLineItemModifierFromJson(
        Map<String, dynamic> json) =>
    OrderReturnLineItemModifier(
      id: json['id'] as String,
      sourceModifierId: json['source_modifier_id'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      name: json['name'] as String,
      basePriceMoney:
          Money.fromJson(json['base_price_money'] as Map<String, dynamic>),
      totalPriceMoney:
          Money.fromJson(json['total_price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReturnLineItemModifierToJson(
        OrderReturnLineItemModifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_modifier_id': instance.sourceModifierId,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'base_price_money': instance.basePriceMoney.toJson(),
      'total_price_money': instance.totalPriceMoney.toJson(),
    };

OrderReturnTax _$OrderReturnTaxFromJson(Map<String, dynamic> json) =>
    OrderReturnTax(
      id: json['id'] as String,
      sourceTaxId: json['source_tax_id'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      name: json['name'] as String,
      type: _$enumDecode(_$OrderLineItemTaxTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num).toDouble(),
      appliedMoney:
          Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      scope: _$enumDecode(_$OrderLineItemTaxScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderReturnTaxToJson(OrderReturnTax instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_tax_id': instance.sourceTaxId,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemTaxTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'applied_money': instance.appliedMoney.toJson(),
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

OrderReturnDiscount _$OrderReturnDiscountFromJson(Map<String, dynamic> json) =>
    OrderReturnDiscount(
      id: json['id'] as String,
      sourceDiscountId: json['source_discount_id'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      name: json['name'] as String,
      type: _$enumDecode(_$OrderLineItemDiscountTypeEnumMap, json['type']),
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appliedMoney:
          Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      scope: _$enumDecode(_$OrderLineItemDiscountScopeEnumMap, json['scope']),
    );

Map<String, dynamic> _$OrderReturnDiscountToJson(
        OrderReturnDiscount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_discount_id': instance.sourceDiscountId,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'type': _$OrderLineItemDiscountTypeEnumMap[instance.type],
      'percentage': instance.percentage,
      'amount_money': instance.amountMoney.toJson(),
      'applied_money': instance.appliedMoney.toJson(),
      'scope': _$OrderLineItemDiscountScopeEnumMap[instance.scope],
    };

OrderReturnServiceCharge _$OrderReturnServiceChargeFromJson(
        Map<String, dynamic> json) =>
    OrderReturnServiceCharge(
      id: json['id'] as String,
      sourceServiceChargeId: json['source_service_charge_id'] as String,
      catalogObjectId: json['catalog_object_id'] as String,
      name: json['name'] as String,
      percentage: (json['percentage'] as num).toDouble(),
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appliedMoney:
          Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['total_money'] as Map<String, dynamic>),
      totalTaxMoney:
          Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      calculationPhase: _$enumDecode(
          _$OrderServiceChargeCalculationPhaseEnumMap,
          json['calculation_phase']),
      taxable: json['taxable'] as bool,
      returnTaxes: (json['return_taxes'] as List<dynamic>)
          .map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderReturnServiceChargeToJson(
        OrderReturnServiceCharge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_service_charge_id': instance.sourceServiceChargeId,
      'catalog_object_id': instance.catalogObjectId,
      'name': instance.name,
      'percentage': instance.percentage,
      'amount_money': instance.amountMoney.toJson(),
      'applied_money': instance.appliedMoney.toJson(),
      'total_money': instance.totalMoney.toJson(),
      'total_tax_money': instance.totalTaxMoney.toJson(),
      'calculation_phase': _$OrderServiceChargeCalculationPhaseEnumMap[
          instance.calculationPhase],
      'taxable': instance.taxable,
      'return_taxes': instance.returnTaxes.map((e) => e.toJson()).toList(),
    };

const _$OrderServiceChargeCalculationPhaseEnumMap = {
  OrderServiceChargeCalculationPhase.subtotalPhase: 'SUBTOTAL_PHASE',
  OrderServiceChargeCalculationPhase.totalPhase: 'TOTAL_PHASE',
};
