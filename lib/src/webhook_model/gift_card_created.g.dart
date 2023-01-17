// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardCreatedEvent _$GiftCardCreatedEventFromJson(
        Map<String, dynamic> json) =>
    GiftCardCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: GiftCardCreatedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardCreatedEventToJson(
        GiftCardCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

GiftCardCreatedSquareEventData _$GiftCardCreatedSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    GiftCardCreatedSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: GiftCardCreatedSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardCreatedSquareEventDataToJson(
        GiftCardCreatedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

GiftCardCreatedSquareEventObject _$GiftCardCreatedSquareEventObjectFromJson(
        Map<String, dynamic> json) =>
    GiftCardCreatedSquareEventObject(
      giftCard: GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardCreatedSquareEventObjectToJson(
        GiftCardCreatedSquareEventObject instance) =>
    <String, dynamic>{
      'gift_card': instance.giftCard.toJson(),
    };
