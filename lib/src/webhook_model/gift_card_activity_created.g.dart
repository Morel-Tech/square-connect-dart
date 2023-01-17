// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivityCreatedEvent _$GiftCardActivityCreatedEventFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: GiftCardActivityCreatedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardActivityCreatedEventToJson(
        GiftCardActivityCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

GiftCardActivityCreatedSquareEventData
    _$GiftCardActivityCreatedSquareEventDataFromJson(
            Map<String, dynamic> json) =>
        GiftCardActivityCreatedSquareEventData(
          id: json['id'] as String,
          type: json['type'] as String,
          object: GiftCardActivityCreatedSquareEventObject.fromJson(
              json['object'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GiftCardActivityCreatedSquareEventDataToJson(
        GiftCardActivityCreatedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

GiftCardActivityCreatedSquareEventObject
    _$GiftCardActivityCreatedSquareEventObjectFromJson(
            Map<String, dynamic> json) =>
        GiftCardActivityCreatedSquareEventObject(
          giftCardActivity: GiftCardActivity.fromJson(
              json['gift_card_activity'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GiftCardActivityCreatedSquareEventObjectToJson(
        GiftCardActivityCreatedSquareEventObject instance) =>
    <String, dynamic>{
      'gift_card_activity': instance.giftCardActivity.toJson(),
    };
