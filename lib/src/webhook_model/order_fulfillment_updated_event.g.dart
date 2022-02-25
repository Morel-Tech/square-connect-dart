// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_fulfillment_updated_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderFulfillmentUpdatedEvent _$OrderFulfillmentUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: OrderFulfillmentUpdatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderFulfillmentUpdatedEventToJson(
        OrderFulfillmentUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

OrderFulfillmentUpdatedWebhookData _$OrderFulfillmentUpdatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentUpdatedWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: OrderFulfillmentUpdatedObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderFulfillmentUpdatedWebhookDataToJson(
        OrderFulfillmentUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

OrderFulfillmentUpdatedObject _$OrderFulfillmentUpdatedObjectFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentUpdatedObject(
      orderFulfillmentUpdated: OrderFulfillmentUpdated.fromJson(
          json['order_fulfillment_updated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderFulfillmentUpdatedObjectToJson(
        OrderFulfillmentUpdatedObject instance) =>
    <String, dynamic>{
      'order_fulfillment_updated': instance.orderFulfillmentUpdated.toJson(),
    };

OrderFulfillmentUpdated _$OrderFulfillmentUpdatedFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentUpdated(
      createdAt: DateTime.parse(json['created_at'] as String),
      fulfillmentUpdate: (json['fulfillment_update'] as List<dynamic>)
          .map((e) =>
              OrderFulfillmentUpdatedUpdate.fromJson(e as Map<String, dynamic>))
          .toList(),
      locationId: json['location_id'] as String,
      orderId: json['order_id'] as String,
      state: _$enumDecode(_$OrderStateEnumMap, json['state']),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      version: json['version'] as int,
    );

Map<String, dynamic> _$OrderFulfillmentUpdatedToJson(
        OrderFulfillmentUpdated instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'fulfillment_update':
          instance.fulfillmentUpdate.map((e) => e.toJson()).toList(),
      'location_id': instance.locationId,
      'order_id': instance.orderId,
      'state': _$OrderStateEnumMap[instance.state],
      'updated_at': instance.updatedAt.toIso8601String(),
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
  OrderState.draft: 'DRAFT',
};

OrderFulfillmentUpdatedUpdate _$OrderFulfillmentUpdatedUpdateFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentUpdatedUpdate(
      fulfillmentUid: json['fulfillment_uid'] as String,
      newState: _$enumDecode(_$OrderFulfillmentStateEnumMap, json['new_state']),
      oldState: _$enumDecode(_$OrderFulfillmentStateEnumMap, json['old_state']),
    );

Map<String, dynamic> _$OrderFulfillmentUpdatedUpdateToJson(
        OrderFulfillmentUpdatedUpdate instance) =>
    <String, dynamic>{
      'fulfillment_uid': instance.fulfillmentUid,
      'new_state': _$OrderFulfillmentStateEnumMap[instance.newState],
      'old_state': _$OrderFulfillmentStateEnumMap[instance.oldState],
    };

const _$OrderFulfillmentStateEnumMap = {
  OrderFulfillmentState.proposed: 'PROPOSED',
  OrderFulfillmentState.reserved: 'RESERVED',
  OrderFulfillmentState.prepared: 'PREPARED',
  OrderFulfillmentState.completed: 'COMPLETED',
  OrderFulfillmentState.canceled: 'CANCELED',
  OrderFulfillmentState.failed: 'FAILED',
};
