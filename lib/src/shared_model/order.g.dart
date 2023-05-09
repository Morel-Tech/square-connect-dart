// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String?,
      locationId: json['location_id'] as String?,
      referenceId: json['reference_id'] as String?,
      source: json['source'] == null
          ? null
          : OrderSource.fromJson(json['source'] as Map<String, dynamic>),
      customerId: json['customer_id'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => OrderLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxes: (json['taxes'] as List<dynamic>?)
          ?.map((e) => OrderLineItemTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      discounts: (json['discounts'] as List<dynamic>?)
          ?.map(
              (e) => OrderLineItemDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceCharges: (json['service_charges'] as List<dynamic>?)
          ?.map((e) => OrderServiceCharge.fromJson(e as Map<String, dynamic>))
          .toList(),
      fulfillments: (json['fulfillments'] as List<dynamic>?)
          ?.map((e) => OrderFulfillment.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnAmounts: json['return_amounts'] == null
          ? null
          : OrderMoneyAmounts.fromJson(
              json['return_amounts'] as Map<String, dynamic>),
      netAmounts: json['net_amounts'] == null
          ? null
          : OrderMoneyAmounts.fromJson(
              json['net_amounts'] as Map<String, dynamic>),
      roundingAdjustment: json['rounding_adjustment'] == null
          ? null
          : OrderRoundingAdjustment.fromJson(
              json['rounding_adjustment'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      closedAt: json['closed_at'] == null
          ? null
          : DateTime.parse(json['closed_at'] as String),
      state: $enumDecodeNullable(_$OrderStateEnumMap, json['state']),
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      totalTaxMoney: json['total_tax_money'] == null
          ? null
          : Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      totalDiscountMoney: json['total_discount_money'] == null
          ? null
          : Money.fromJson(
              json['total_discount_money'] as Map<String, dynamic>),
      totalServiceChargeMoney: json['total_service_charge_money'] == null
          ? null
          : Money.fromJson(
              json['total_service_charge_money'] as Map<String, dynamic>),
      tenders: (json['tenders'] as List<dynamic>?)
          ?.map((e) => Tender.fromJson(e as Map<String, dynamic>))
          .toList(),
      refunds: (json['refunds'] as List<dynamic>?)
          ?.map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
      returns: (json['returns'] as List<dynamic>?)
          ?.map((e) => OrderReturn.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as int?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      netAmountDueMoney: json['net_amount_due_money'] == null
          ? null
          : Money.fromJson(
              json['net_amount_due_money'] as Map<String, dynamic>),
      pricingOptions: json['pricing_options'] == null
          ? null
          : OrderPricingOptions.fromJson(
              json['pricing_options'] as Map<String, dynamic>),
      rewards: (json['rewards'] as List<dynamic>?)
          ?.map((e) => OrderReward.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticketName: json['ticket_name'] as String?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('customer_id', instance.customerId);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('taxes', instance.taxes?.map((e) => e.toJson()).toList());
  writeNotNull(
      'discounts', instance.discounts?.map((e) => e.toJson()).toList());
  writeNotNull('service_charges',
      instance.serviceCharges?.map((e) => e.toJson()).toList());
  writeNotNull(
      'fulfillments', instance.fulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('returns', instance.returns?.map((e) => e.toJson()).toList());
  writeNotNull('return_amounts', instance.returnAmounts?.toJson());
  writeNotNull('net_amounts', instance.netAmounts?.toJson());
  writeNotNull('rounding_adjustment', instance.roundingAdjustment?.toJson());
  writeNotNull('tenders', instance.tenders?.map((e) => e.toJson()).toList());
  writeNotNull('refunds', instance.refunds?.map((e) => e.toJson()).toList());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('closed_at', instance.closedAt?.toIso8601String());
  writeNotNull('state', _$OrderStateEnumMap[instance.state]);
  writeNotNull('total_money', instance.totalMoney?.toJson());
  writeNotNull('total_tax_money', instance.totalTaxMoney?.toJson());
  writeNotNull('total_discount_money', instance.totalDiscountMoney?.toJson());
  writeNotNull(
      'total_service_charge_money', instance.totalServiceChargeMoney?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('ticket_name', instance.ticketName);
  writeNotNull('pricing_options', instance.pricingOptions?.toJson());
  writeNotNull('rewards', instance.rewards?.map((e) => e.toJson()).toList());
  writeNotNull('net_amount_due_money', instance.netAmountDueMoney?.toJson());
  return val;
}

const _$OrderStateEnumMap = {
  OrderState.open: 'OPEN',
  OrderState.completed: 'COMPLETED',
  OrderState.canceled: 'CANCELED',
  OrderState.draft: 'DRAFT',
};
