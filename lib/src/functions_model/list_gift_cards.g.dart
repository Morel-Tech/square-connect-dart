// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_gift_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListGiftCardsResponse _$ListGiftCardsResponseFromJson(
        Map<String, dynamic> json) =>
    ListGiftCardsResponse(
      giftCards: (json['gift_cards'] as List<dynamic>?)
          ?.map((e) => GiftCard.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListGiftCardsResponseToJson(
    ListGiftCardsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull(
      'gift_cards', instance.giftCards?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
