// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCardResponse _$RetrieveCardResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveCardResponse(
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveCardResponseToJson(
        RetrieveCardResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'card': instance.card?.toJson(),
    };
