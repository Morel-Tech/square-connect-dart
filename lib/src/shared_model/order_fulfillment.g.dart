// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_fulfillment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderFulfillment _$OrderFulfillmentFromJson(Map<String, dynamic> json) =>
    OrderFulfillment(
      type: $enumDecode(_$OrderFulfillmentTypeEnumMap, json['type']),
      state: $enumDecode(_$OrderFulfillmentStateEnumMap, json['state']),
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

Map<String, dynamic> _$OrderFulfillmentToJson(OrderFulfillment instance) {
  final val = <String, dynamic>{
    'type': _$OrderFulfillmentTypeEnumMap[instance.type]!,
    'state': _$OrderFulfillmentStateEnumMap[instance.state]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pickup_details', instance.pickupDetails?.toJson());
  writeNotNull('shipment_details', instance.shipmentDetails?.toJson());
  writeNotNull('uid', instance.uid);
  writeNotNull('metadata', instance.metadata);
  return val;
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
