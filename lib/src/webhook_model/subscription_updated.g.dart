// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionUpdatedEvent _$SubscriptionUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    SubscriptionUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: SubscriptionUpdatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionUpdatedEventToJson(
        SubscriptionUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

SubscriptionUpdatedWebhookData _$SubscriptionUpdatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionUpdatedWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: SubscriptionUpdatedSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionUpdatedWebhookDataToJson(
        SubscriptionUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

SubscriptionUpdatedSquareEventObject
    _$SubscriptionUpdatedSquareEventObjectFromJson(Map<String, dynamic> json) =>
        SubscriptionUpdatedSquareEventObject(
          subscription: Subscription.fromJson(
              json['subscription'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SubscriptionUpdatedSquareEventObjectToJson(
        SubscriptionUpdatedSquareEventObject instance) =>
    <String, dynamic>{
      'subscription': instance.subscription.toJson(),
    };
