// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_created_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCreatedEvent _$OrderCreatedEventFromJson(Map<String, dynamic> json) =>
    OrderCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: OrderCreatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderCreatedEventToJson(OrderCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

OrderCreatedWebhookData _$OrderCreatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    OrderCreatedWebhookData(
      id: json['id'] as String,
      object:
          OrderCreatedObject.fromJson(json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$OrderCreatedWebhookDataToJson(
        OrderCreatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object.toJson(),
      'type': instance.type,
    };

OrderCreatedObject _$OrderCreatedObjectFromJson(Map<String, dynamic> json) =>
    OrderCreatedObject(
      orderCreated:
          OrderCreated.fromJson(json['order_created'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderCreatedObjectToJson(OrderCreatedObject instance) =>
    <String, dynamic>{
      'order_created': instance.orderCreated.toJson(),
    };

OrderCreated _$OrderCreatedFromJson(Map<String, dynamic> json) => OrderCreated(
      createdAt: DateTime.parse(json['created_at'] as String),
      locationId: json['location_id'] as String,
      orderId: json['order_id'] as String,
      state: $enumDecode(_$OrderStateEnumMap, json['state']),
      version: json['version'] as int,
    );

Map<String, dynamic> _$OrderCreatedToJson(OrderCreated instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'location_id': instance.locationId,
      'order_id': instance.orderId,
      'state': _$OrderStateEnumMap[instance.state],
      'version': instance.version,
    };

const _$OrderStateEnumMap = {
  OrderState.open: 'OPEN',
  OrderState.completed: 'COMPLETED',
  OrderState.canceled: 'CANCELED',
  OrderState.draft: 'DRAFT',
};
