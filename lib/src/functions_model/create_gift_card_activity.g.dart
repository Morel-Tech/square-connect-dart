// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gift_card_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGiftCardActivityRequest _$CreateGiftCardActivityRequestFromJson(
        Map<String, dynamic> json) =>
    CreateGiftCardActivityRequest(
      idempotencyKey: json['idempotency_key'] as String,
      giftCardActivity: GiftCardActivity.fromJson(
          json['gift_card_activity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateGiftCardActivityRequestToJson(
        CreateGiftCardActivityRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'gift_card_activity': instance.giftCardActivity.toJson(),
    };

CreateGiftCardActivityResponse _$CreateGiftCardActivityResponseFromJson(
        Map<String, dynamic> json) =>
    CreateGiftCardActivityResponse(
      giftCardActivity: json['gift_card_activity'] == null
          ? null
          : GiftCardActivity.fromJson(
              json['gift_card_activity'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateGiftCardActivityResponseToJson(
    CreateGiftCardActivityResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('gift_card_activity', instance.giftCardActivity?.toJson());
  return val;
}
