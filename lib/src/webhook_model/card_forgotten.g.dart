// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_forgotten.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardForgottenEvent _$CardForgottenEventFromJson(Map<String, dynamic> json) =>
    CardForgottenEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: CardForgottenWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardForgottenEventToJson(CardForgottenEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

CardForgottenWebhookData _$CardForgottenWebhookDataFromJson(
        Map<String, dynamic> json) =>
    CardForgottenWebhookData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: CardForgottenWebhookObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardForgottenWebhookDataToJson(
        CardForgottenWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

CardForgottenWebhookObject _$CardForgottenWebhookObjectFromJson(
        Map<String, dynamic> json) =>
    CardForgottenWebhookObject(
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardForgottenWebhookObjectToJson(
        CardForgottenWebhookObject instance) =>
    <String, dynamic>{
      'card': instance.card.toJson(),
    };
