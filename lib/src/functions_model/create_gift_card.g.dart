// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gift_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGiftCardRequest _$CreateGiftCardRequestFromJson(
        Map<String, dynamic> json) =>
    CreateGiftCardRequest(
      idempotencyKey: json['idempotency_key'] as String,
      locationId: json['location_id'] as String,
      giftCard: GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateGiftCardRequestToJson(
        CreateGiftCardRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'location_id': instance.locationId,
      'gift_card': instance.giftCard.toJson(),
    };

CreateGiftCardResponse _$CreateGiftCardResponseFromJson(
        Map<String, dynamic> json) =>
    CreateGiftCardResponse(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateGiftCardResponseToJson(
    CreateGiftCardResponse instance) {
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
