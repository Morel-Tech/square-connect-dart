// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionCreatedEvent _$SubscriptionCreatedEventFromJson(
        Map<String, dynamic> json) =>
    SubscriptionCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: SubscriptionCreatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionCreatedEventToJson(
        SubscriptionCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

SubscriptionCreatedWebhookData _$SubscriptionCreatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionCreatedWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: SubscriptionCreatedSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionCreatedWebhookDataToJson(
        SubscriptionCreatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

SubscriptionCreatedSquareEventObject
    _$SubscriptionCreatedSquareEventObjectFromJson(Map<String, dynamic> json) =>
        SubscriptionCreatedSquareEventObject(
          subscription: Subscription.fromJson(
              json['subscription'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SubscriptionCreatedSquareEventObjectToJson(
        SubscriptionCreatedSquareEventObject instance) =>
    <String, dynamic>{
      'subscription': instance.subscription.toJson(),
    };
