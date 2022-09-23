// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyProgramUpdatedEvent _$LoyaltyProgramUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$LoyaltyProgramUpdatedEventToJson(
        LoyaltyProgramUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
    };

LoyaltyProgramUpdatedWebhookData _$LoyaltyProgramUpdatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramUpdatedWebhookData(
      id: json['id'] as String,
      object: LoyaltyProgram.fromJson(json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$LoyaltyProgramUpdatedWebhookDataToJson(
        LoyaltyProgramUpdatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object.toJson(),
      'type': instance.type,
    };
