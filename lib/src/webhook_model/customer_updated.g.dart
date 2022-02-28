// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerUpdatedEvent _$CustomerUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    CustomerUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$CustomerUpdatedEventToJson(
        CustomerUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
    };

CustomerUpdatedWebhookData _$CustomerUpdatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    CustomerUpdatedWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: CustomerUpdatedWebhookObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerUpdatedWebhookDataToJson(
        CustomerUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

CustomerUpdatedWebhookObject _$CustomerUpdatedWebhookObjectFromJson(
        Map<String, dynamic> json) =>
    CustomerUpdatedWebhookObject(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerUpdatedWebhookObjectToJson(
        CustomerUpdatedWebhookObject instance) =>
    <String, dynamic>{
      'customer': instance.customer.toJson(),
    };
