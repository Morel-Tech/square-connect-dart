// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisableCardResponse _$DisableCardResponseFromJson(Map<String, dynamic> json) =>
    DisableCardResponse(
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DisableCardResponseToJson(
        DisableCardResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'card': instance.card?.toJson(),
    };
