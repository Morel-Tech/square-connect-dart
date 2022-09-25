// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardUpdatedEvent _$CardUpdatedEventFromJson(Map<String, dynamic> json) =>
    CardUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data:
          CardUpdatedWebhookData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardUpdatedEventToJson(CardUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

CardUpdatedWebhookData _$CardUpdatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    CardUpdatedWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: Card.fromJson(json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardUpdatedWebhookDataToJson(
        CardUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };
