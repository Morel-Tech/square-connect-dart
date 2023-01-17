// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_customer_unlinked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardCustomerUnlinkedEvent _$GiftCardCustomerUnlinkedEventFromJson(
        Map<String, dynamic> json) =>
    GiftCardCustomerUnlinkedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: GiftCardCustomerUnlinkedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardCustomerUnlinkedEventToJson(
        GiftCardCustomerUnlinkedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

GiftCardCustomerUnlinkedSquareEventData
    _$GiftCardCustomerUnlinkedSquareEventDataFromJson(
            Map<String, dynamic> json) =>
        GiftCardCustomerUnlinkedSquareEventData(
          id: json['id'] as String,
          type: json['type'] as String,
          object: GiftCardCustomerUnlinkedSquareEventObject.fromJson(
              json['object'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GiftCardCustomerUnlinkedSquareEventDataToJson(
        GiftCardCustomerUnlinkedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

GiftCardCustomerUnlinkedSquareEventObject
    _$GiftCardCustomerUnlinkedSquareEventObjectFromJson(
            Map<String, dynamic> json) =>
        GiftCardCustomerUnlinkedSquareEventObject(
          unlinkedCustomerId: json['unlinked_customer_id'] as String,
          giftCard:
              GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GiftCardCustomerUnlinkedSquareEventObjectToJson(
        GiftCardCustomerUnlinkedSquareEventObject instance) =>
    <String, dynamic>{
      'unlinked_customer_id': instance.unlinkedCustomerId,
      'gift_card': instance.giftCard.toJson(),
    };
