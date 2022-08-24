// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCardRequest _$CreateCardRequestFromJson(Map<String, dynamic> json) =>
    CreateCardRequest(
      idempotencyKey: json['idempotency_key'] as String,
      sourceId: json['source_id'] as String,
      verificationToken: json['verification_token'] as String?,
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCardRequestToJson(CreateCardRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'source_id': instance.sourceId,
      'verification_token': instance.verificationToken,
      'card': instance.card.toJson(),
    };

CreateCardResponse _$CreateCardResponseFromJson(Map<String, dynamic> json) =>
    CreateCardResponse(
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateCardResponseToJson(CreateCardResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'card': instance.card?.toJson(),
    };
