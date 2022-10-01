// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_account_deleted.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyAccountDeletedEvent _$LoyaltyAccountDeletedEventFromJson(
        Map<String, dynamic> json) =>
    LoyaltyAccountDeletedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: LoyaltyAccountDeletedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyAccountDeletedEventToJson(
        LoyaltyAccountDeletedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

LoyaltyAccountDeletedWebhookData _$LoyaltyAccountDeletedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyAccountDeletedWebhookData(
      id: json['id'] as String,
      object: LoyaltyAccount.fromJson(json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$LoyaltyAccountDeletedWebhookDataToJson(
        LoyaltyAccountDeletedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

LoyaltyAccountDeletedWebhookDataObject
    _$LoyaltyAccountDeletedWebhookDataObjectFromJson(
            Map<String, dynamic> json) =>
        LoyaltyAccountDeletedWebhookDataObject(
          loyaltyAccount: LoyaltyAccount.fromJson(
              json['loyalty_account'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$LoyaltyAccountDeletedWebhookDataObjectToJson(
        LoyaltyAccountDeletedWebhookDataObject instance) =>
    <String, dynamic>{
      'loyalty_account': instance.loyaltyAccount.toJson(),
    };
