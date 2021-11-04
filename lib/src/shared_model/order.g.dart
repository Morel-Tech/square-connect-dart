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
      state: _$enumDecodeNullable(_$OrderStateEnumMap, json['state']),
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
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'reference_id': instance.referenceId,
      'source': instance.source?.toJson(),
      'customer_id': instance.customerId,
      'line_items': instance.lineItems?.map((e) => e.toJson()).toList(),
      'taxes': instance.taxes?.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts?.map((e) => e.toJson()).toList(),
      'service_charges':
          instance.serviceCharges?.map((e) => e.toJson()).toList(),
      'fulfillments': instance.fulfillments?.map((e) => e.toJson()).toList(),
      'returns': instance.returns?.map((e) => e.toJson()).toList(),
      'return_amounts': instance.returnAmounts?.toJson(),
      'net_amounts': instance.netAmounts?.toJson(),
      'rounding_adjustment': instance.roundingAdjustment?.toJson(),
      'tenders': instance.tenders?.map((e) => e.toJson()).toList(),
      'refunds': instance.refunds?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'closed_at': instance.closedAt?.toIso8601String(),
      'state': _$OrderStateEnumMap[instance.state],
      'total_money': instance.totalMoney?.toJson(),
      'total_tax_money': instance.totalTaxMoney?.toJson(),
      'total_discount_money': instance.totalDiscountMoney?.toJson(),
      'total_service_charge_money': instance.totalServiceChargeMoney?.toJson(),
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$OrderStateEnumMap = {
  OrderState.open: 'OPEN',
  OrderState.completed: 'COMPLETED',
  OrderState.canceled: 'CANCELED',
  OrderState.draft: 'DRAFT',
};
