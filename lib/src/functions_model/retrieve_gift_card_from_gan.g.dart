// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_gift_card_from_gan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveGiftCardFromGanRequest _$RetrieveGiftCardFromGanRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveGiftCardFromGanRequest(
      gan: json['gan'] as String,
    );

Map<String, dynamic> _$RetrieveGiftCardFromGanRequestToJson(
        RetrieveGiftCardFromGanRequest instance) =>
    <String, dynamic>{
      'gan': instance.gan,
    };

RetrieveGiftCardFromGanResponse _$RetrieveGiftCardFromGanResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveGiftCardFromGanResponse(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveGiftCardFromGanResponseToJson(
    RetrieveGiftCardFromGanResponse instance) {
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
