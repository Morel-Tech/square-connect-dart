// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardUpdatedEvent _$GiftCardUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    GiftCardUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: GiftCardUpdatedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardUpdatedEventToJson(
        GiftCardUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

GiftCardUpdatedSquareEventData _$GiftCardUpdatedSquareEventDataFromJson(
        Map<String, dynamic> json) =>
    GiftCardUpdatedSquareEventData(
      id: json['id'] as String,
      type: json['type'] as String,
      object: GiftCardUpdatedSquareEventObject.fromJson(
          json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardUpdatedSquareEventDataToJson(
        GiftCardUpdatedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

GiftCardUpdatedSquareEventObject _$GiftCardUpdatedSquareEventObjectFromJson(
        Map<String, dynamic> json) =>
    GiftCardUpdatedSquareEventObject(
      giftCard: GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardUpdatedSquareEventObjectToJson(
        GiftCardUpdatedSquareEventObject instance) =>
    <String, dynamic>{
      'gift_card': instance.giftCard.toJson(),
    };
