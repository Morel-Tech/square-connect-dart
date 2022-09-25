// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebhookEvent _$WebhookEventFromJson(Map<String, dynamic> json) => WebhookEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$WebhookEventToJson(WebhookEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
    };

WebhookData _$WebhookDataFromJson(Map<String, dynamic> json) => WebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$WebhookDataToJson(WebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
