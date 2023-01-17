// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_customer_linked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardCustomerLinkedEvent _$GiftCardCustomerLinkedEventFromJson(
        Map<String, dynamic> json) =>
    GiftCardCustomerLinkedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: GiftCardCustomerLinkedSquareEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardCustomerLinkedEventToJson(
        GiftCardCustomerLinkedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

GiftCardCustomerLinkedSquareEventData
    _$GiftCardCustomerLinkedSquareEventDataFromJson(
            Map<String, dynamic> json) =>
        GiftCardCustomerLinkedSquareEventData(
          id: json['id'] as String,
          type: json['type'] as String,
          object: GiftCardCustomerLinkedSquareEventObject.fromJson(
              json['object'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GiftCardCustomerLinkedSquareEventDataToJson(
        GiftCardCustomerLinkedSquareEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

GiftCardCustomerLinkedSquareEventObject
    _$GiftCardCustomerLinkedSquareEventObjectFromJson(
            Map<String, dynamic> json) =>
        GiftCardCustomerLinkedSquareEventObject(
          linkedCustomerId: json['linked_customer_id'] as String,
          giftCard:
              GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GiftCardCustomerLinkedSquareEventObjectToJson(
        GiftCardCustomerLinkedSquareEventObject instance) =>
    <String, dynamic>{
      'linked_customer_id': instance.linkedCustomerId,
      'gift_card': instance.giftCard.toJson(),
    };
