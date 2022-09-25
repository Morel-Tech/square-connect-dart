// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_account_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyAccountCreatedEvent _$LoyaltyAccountCreatedEventFromJson(
        Map<String, dynamic> json) =>
    LoyaltyAccountCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: LoyaltyAccountCreatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyAccountCreatedEventToJson(
        LoyaltyAccountCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

LoyaltyAccountCreatedWebhookData _$LoyaltyAccountCreatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyAccountCreatedWebhookData(
      id: json['id'] as String,
      object: LoyaltyAccount.fromJson(json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$LoyaltyAccountCreatedWebhookDataToJson(
        LoyaltyAccountCreatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };
