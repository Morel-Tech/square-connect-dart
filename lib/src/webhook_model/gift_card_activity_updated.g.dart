// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityUpdatedEvent _$GiftCardActivityUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: GiftCardActivityUpdatedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardActivityUpdatedEventToJson(
        GiftCardActivityUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

GiftCardActivityUpdatedSquareEventData
    _$GiftCardActivityUpdatedSquareEventDataFromJson(
            Map<String, dynamic> json) =>
        GiftCardActivityUpdatedSquareEventData(
          id: json['id'] as String,
          type: json['type'] as String,
          object: GiftCardActivityUpdatedSquareEventObject.fromJson(
              json['object'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GiftCardActivityUpdatedSquareEventDataToJson(
        GiftCardActivityUpdatedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

GiftCardActivityUpdatedSquareEventObject
    _$GiftCardActivityUpdatedSquareEventObjectFromJson(
            Map<String, dynamic> json) =>
        GiftCardActivityUpdatedSquareEventObject(
          giftCardActivity: GiftCardActivity.fromJson(
              json['gift_card_activity'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GiftCardActivityUpdatedSquareEventObjectToJson(
        GiftCardActivityUpdatedSquareEventObject instance) =>
    <String, dynamic>{
      'gift_card_activity': instance.giftCardActivity.toJson(),
    };
