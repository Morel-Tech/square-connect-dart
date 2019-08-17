import 'package:square_connect/square_connect.dart';

const _mapStringtoOrderLineItemTaxType = {
  'UNKNOWN_TAX': OrderLineItemTaxType.unknownTax,
  'ADDITIVE': OrderLineItemTaxType.additive,
  'INCLUSIVE': OrderLineItemTaxType.inclusive,
};

OrderLineItemTaxType getOrderLineItemTaxTypeFromString(String input) =>
    _mapStringtoOrderLineItemTaxType[input];
String getStringFromOrderLineItemTaxType(OrderLineItemTaxType input) =>
    _mapStringtoOrderLineItemTaxType.keys.singleWhere(
        (value) => _mapStringtoOrderLineItemTaxType[value] == input);

const _mapStringtoOrderLineItemTaxScope = {
  'OTHER_TAX_SCOPE': OrderLineItemTaxScope.otherTaxScope,
  'LINE_ITEM': OrderLineItemTaxScope.lineItem,
  'ORDER': OrderLineItemTaxScope.order,
};

OrderLineItemTaxScope getOrderLineItemTaxScopeFromString(String input) =>
    _mapStringtoOrderLineItemTaxScope[input];
String getStringFromOrderLineItemTaxScope(OrderLineItemTaxScope input) =>
    _mapStringtoOrderLineItemTaxScope.keys.singleWhere(
        (value) => _mapStringtoOrderLineItemTaxScope[value] == input);

const _mapStringtoOrderLineItemDiscountType = {
  'UNKNOWN_DISCOUNT': OrderLineItemDiscountType.unknownDiscount,
  'FIXED_PERCENTAGE': OrderLineItemDiscountType.fixedPercentage,
  'FIXED_AMOUNT': OrderLineItemDiscountType.fixedAmount,
  'VARIABLE_PERCENTAGE': OrderLineItemDiscountType.variablePercentage,
  'VARIABLE_AMOUNT': OrderLineItemDiscountType.variableAmount,
};

OrderLineItemDiscountType getOrderLineItemDiscountTypeFromString(
        String input) =>
    _mapStringtoOrderLineItemDiscountType[input];
String getStringFromOrderLineItemDiscountType(
        OrderLineItemDiscountType input) =>
    _mapStringtoOrderLineItemDiscountType.keys.singleWhere(
        (value) => _mapStringtoOrderLineItemDiscountType[value] == input);

const _mapStringtoOrderLineItemDiscountScope = {
  'OTHER_DISCOUNT_SCOPE': OrderLineItemDiscountScope.otherDiscountScope,
  'LINE_ITEM': OrderLineItemDiscountScope.lineItem,
  'ORDER': OrderLineItemDiscountScope.order,
};

OrderLineItemDiscountScope getOrderLineItemDiscountScopeFromString(
        String input) =>
    _mapStringtoOrderLineItemDiscountScope[input];
String getStringFromOrderLineItemDiscountScope(
        OrderLineItemDiscountScope input) =>
    _mapStringtoOrderLineItemDiscountScope.keys.singleWhere(
        (value) => _mapStringtoOrderLineItemDiscountScope[value] == input);

const _mapStringtoOrderState = {
  'OPEN': OrderState.open,
  'COMPLETED': OrderState.completed,
  'CANCELED': OrderState.canceled,
};

OrderState getOrderStateFromString(String input) =>
    _mapStringtoOrderState[input];
String getStringFromOrderState(OrderState input) => _mapStringtoOrderState.keys
    .singleWhere((value) => _mapStringtoOrderState[value] == input);

const _mapStringtoOrderServiceChargeCalculationPhase = {
  'SUBTOTAL_PHASE': OrderServiceChargeCalculationPhase.subtotalPhase,
  'TOTAL_PHASE': OrderServiceChargeCalculationPhase.totalPhase,
};

OrderServiceChargeCalculationPhase
    getOrderServiceChargeCalculationPhaseFromString(String input) =>
        _mapStringtoOrderServiceChargeCalculationPhase[input];
String getStringFromOrderServiceChargeCalculationPhase(
        OrderServiceChargeCalculationPhase input) =>
    _mapStringtoOrderServiceChargeCalculationPhase.keys.singleWhere((value) =>
        _mapStringtoOrderServiceChargeCalculationPhase[value] == input);

const _mapStringtoOrderFulfillmentType = {
  'PICKUP': OrderFulfillmentType.pickup,
  'SHIPMENT': OrderFulfillmentType.shipment,
};

OrderFulfillmentType getOrderFulfillmentTypeFromString(String input) =>
    _mapStringtoOrderFulfillmentType[input];
String getStringFromOrderFulfillmentType(OrderFulfillmentType input) =>
    _mapStringtoOrderFulfillmentType.keys.singleWhere(
        (value) => _mapStringtoOrderFulfillmentType[value] == input);

const _mapStringtoOrderFulfillmentState = {
  'PROPOSED': OrderFulfillmentState.proposed,
  'RESERVED': OrderFulfillmentState.reserved,
  'PREPARED': OrderFulfillmentState.prepared,
  'COMPLETED': OrderFulfillmentState.completed,
  'CANCELED': OrderFulfillmentState.canceled,
  'FAILED': OrderFulfillmentState.failed,
};

OrderFulfillmentState getOrderFulfillmentStateFromString(String input) =>
    _mapStringtoOrderFulfillmentState[input];
String getStringFromOrderFulfillmentState(OrderFulfillmentState input) =>
    _mapStringtoOrderFulfillmentState.keys.singleWhere(
        (value) => _mapStringtoOrderFulfillmentState[value] == input);

const _mapStringtoOrderFulfillmentPickupDetailsScheduleType = {
  'SCHEDULED': OrderFulfillmentPickupDetailsScheduleType.scheduled,
  'ASAP': OrderFulfillmentPickupDetailsScheduleType.asap,
};

OrderFulfillmentPickupDetailsScheduleType
    getOrderFulfillmentPickupDetailsScheduleTypeFromString(String input) =>
        _mapStringtoOrderFulfillmentPickupDetailsScheduleType[input];
String getStringFromOrderFulfillmentPickupDetailsScheduleType(
        OrderFulfillmentPickupDetailsScheduleType input) =>
    _mapStringtoOrderFulfillmentPickupDetailsScheduleType.keys.singleWhere(
        (value) =>
            _mapStringtoOrderFulfillmentPickupDetailsScheduleType[value] ==
            input);
