// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyProgramCreatedEvent _$LoyaltyProgramCreatedEventFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: LoyaltyProgramCreatedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyProgramCreatedEventToJson(
        LoyaltyProgramCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

LoyaltyProgramCreatedWebhookData _$LoyaltyProgramCreatedWebhookDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramCreatedWebhookData(
      id: json['id'] as String,
      object: LoyaltyProgramCreatedWebhookObject.fromJson(
          json['object'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$LoyaltyProgramCreatedWebhookDataToJson(
        LoyaltyProgramCreatedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

LoyaltyProgramCreatedWebhookObject _$LoyaltyProgramCreatedWebhookObjectFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramCreatedWebhookObject(
      loyaltyProgram: LoyaltyProgram.fromJson(
          json['loyalty_program'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyProgramCreatedWebhookObjectToJson(
        LoyaltyProgramCreatedWebhookObject instance) =>
    <String, dynamic>{
      'loyalty_program': instance.loyaltyProgram.toJson(),
    };
