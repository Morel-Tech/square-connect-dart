// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_updated_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderUpdatedEvent _$OrderUpdatedEventFromJson(Map<String, dynamic> json) =>
    OrderUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: OrderUpdatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderUpdatedEventToJson(OrderUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

OrderUpdatedWebhookData _$OrderUpdatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    OrderUpdatedWebhookData(
      id: json['id'] as String,
      object:
          OrderUpdatedObject.fromJson(json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$OrderUpdatedWebhookDataToJson(
        OrderUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object.toJson(),
      'type': instance.type,
    };

OrderUpdatedObject _$OrderUpdatedObjectFromJson(Map<String, dynamic> json) =>
    OrderUpdatedObject(
      orderUpdated:
          OrderUpdated.fromJson(json['order_updated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderUpdatedObjectToJson(OrderUpdatedObject instance) =>
    <String, dynamic>{
      'order_updated': instance.orderUpdated.toJson(),
    };

OrderUpdated _$OrderUpdatedFromJson(Map<String, dynamic> json) => OrderUpdated(
      createdAt: DateTime.parse(json['created_at'] as String),
      locationId: json['location_id'] as String,
      orderId: json['order_id'] as String,
      state: $enumDecode(_$OrderStateEnumMap, json['state']),
      version: json['version'] as int,
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$OrderUpdatedToJson(OrderUpdated instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
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
