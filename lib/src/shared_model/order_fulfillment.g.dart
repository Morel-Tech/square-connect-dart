// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_fulfillment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderFulfillment _$OrderFulfillmentFromJson(Map<String, dynamic> json) =>
    OrderFulfillment(
      type: _$enumDecode(_$OrderFulfillmentTypeEnumMap, json['type']),
      state: _$enumDecode(_$OrderFulfillmentStateEnumMap, json['state']),
      pickupDetails: json['pickup_details'] == null
          ? null
          : OrderFulfillmentPickupDetails.fromJson(
              json['pickup_details'] as Map<String, dynamic>),
      shipmentDetails: json['shipment_details'] == null
          ? null
          : OrderFulfillmentShipmentDetails.fromJson(
              json['shipment_details'] as Map<String, dynamic>),
      uid: json['uid'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$OrderFulfillmentToJson(OrderFulfillment instance) =>
    <String, dynamic>{
      'type': _$OrderFulfillmentTypeEnumMap[instance.type],
      'state': _$OrderFulfillmentStateEnumMap[instance.state],
      'pickup_details': instance.pickupDetails?.toJson(),
      'shipment_details': instance.shipmentDetails?.toJson(),
      'uid': instance.uid,
      'metadata': instance.metadata,
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

const _$OrderFulfillmentTypeEnumMap = {
  OrderFulfillmentType.pickup: 'PICKUP',
  OrderFulfillmentType.shipment: 'SHIPMENT',
  OrderFulfillmentType.delivery: 'DELIVERY',
};

const _$OrderFulfillmentStateEnumMap = {
  OrderFulfillmentState.proposed: 'PROPOSED',
  OrderFulfillmentState.reserved: 'RESERVED',
  OrderFulfillmentState.prepared: 'PREPARED',
  OrderFulfillmentState.completed: 'COMPLETED',
  OrderFulfillmentState.canceled: 'CANCELED',
  OrderFulfillmentState.failed: 'FAILED',
};
