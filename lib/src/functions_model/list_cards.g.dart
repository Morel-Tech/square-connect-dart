// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCardsResponse _$ListCardsResponseFromJson(Map<String, dynamic> json) =>
    ListCardsResponse(
      cards: (json['cards'] as List<dynamic>?)
          ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListCardsResponseToJson(ListCardsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'cards': instance.cards?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
    };
