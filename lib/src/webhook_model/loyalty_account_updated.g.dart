// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_account_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyAccountUpdatedEvent _$LoyaltyAccountUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    LoyaltyAccountUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: LoyaltyAccountUpdatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyAccountUpdatedEventToJson(
        LoyaltyAccountUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

LoyaltyAccountUpdatedWebhookData _$LoyaltyAccountUpdatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyAccountUpdatedWebhookData(
      id: json['id'] as String,
      object: LoyaltyAccountUpdatedWebhookDataObject.fromJson(
          json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$LoyaltyAccountUpdatedWebhookDataToJson(
        LoyaltyAccountUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

LoyaltyAccountUpdatedWebhookDataObject
    _$LoyaltyAccountUpdatedWebhookDataObjectFromJson(
            Map<String, dynamic> json) =>
        LoyaltyAccountUpdatedWebhookDataObject(
          loyaltyAccount: LoyaltyAccount.fromJson(
              json['loyalty_account'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$LoyaltyAccountUpdatedWebhookDataObjectToJson(
        LoyaltyAccountUpdatedWebhookDataObject instance) =>
    <String, dynamic>{
      'loyalty_account': instance.loyaltyAccount.toJson(),
    };
