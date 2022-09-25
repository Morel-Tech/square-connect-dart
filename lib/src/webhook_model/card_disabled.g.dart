// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_disabled.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardDisabledEvent _$CardDisabledEventFromJson(Map<String, dynamic> json) =>
    CardDisabledEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: CardDisabledWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardDisabledEventToJson(CardDisabledEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

CardDisabledWebhookData _$CardDisabledWebhookDataFromJson(
        Map<String, dynamic> json) =>
    CardDisabledWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: CardDisabledWebhookObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardDisabledWebhookDataToJson(
        CardDisabledWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

CardDisabledWebhookObject _$CardDisabledWebhookObjectFromJson(
        Map<String, dynamic> json) =>
    CardDisabledWebhookObject(
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardDisabledWebhookObjectToJson(
        CardDisabledWebhookObject instance) =>
    <String, dynamic>{
      'card': instance.card.toJson(),
    };
