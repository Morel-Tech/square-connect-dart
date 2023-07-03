// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCardRequest _$CreateCardRequestFromJson(Map<String, dynamic> json) =>
    CreateCardRequest(
      idempotencyKey: json['idempotency_key'] as String,
      sourceId: json['source_id'] as String,
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
      verificationToken: json['verification_token'] as String?,
    );

Map<String, dynamic> _$CreateCardRequestToJson(CreateCardRequest instance) {
  final val = <String, dynamic>{
    'idempotency_key': instance.idempotencyKey,
    'source_id': instance.sourceId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('verification_token', instance.verificationToken);
  val['card'] = instance.card.toJson();
  return val;
}

CreateCardResponse _$CreateCardResponseFromJson(Map<String, dynamic> json) =>
    CreateCardResponse(
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateCardResponseToJson(CreateCardResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('card', instance.card?.toJson());
  return val;
}
