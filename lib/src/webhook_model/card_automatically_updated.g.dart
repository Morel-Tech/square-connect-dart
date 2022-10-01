// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_automatically_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardAutomaticallyUpdatedEvent _$CardAutomaticallyUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    CardAutomaticallyUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: CardAutomaticallyUpdatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardAutomaticallyUpdatedEventToJson(
        CardAutomaticallyUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

CardAutomaticallyUpdatedWebhookData
    _$CardAutomaticallyUpdatedWebhookDataFromJson(Map<String, dynamic> json) =>
        CardAutomaticallyUpdatedWebhookData(
          id: json['id'] as String,
          type: json['type'] as String,
          object: Card.fromJson(json['object'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardAutomaticallyUpdatedWebhookDataToJson(
        CardAutomaticallyUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };
