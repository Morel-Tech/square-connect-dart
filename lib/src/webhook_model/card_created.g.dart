// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardCreatedEvent _$CardCreatedEventFromJson(Map<String, dynamic> json) =>
    CardCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data:
          CardCreatedWebhookData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardCreatedEventToJson(CardCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

CardCreatedWebhookData _$CardCreatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    CardCreatedWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: Card.fromJson(json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardCreatedWebhookDataToJson(
        CardCreatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };
