// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_gift_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveGiftCardResponse _$RetrieveGiftCardResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveGiftCardResponse(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveGiftCardResponseToJson(
    RetrieveGiftCardResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('gift_card', instance.giftCard?.toJson());
  return val;
}
