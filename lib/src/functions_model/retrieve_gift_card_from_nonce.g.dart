// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_gift_card_from_nonce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveGiftCardFromNonceRequest _$RetrieveGiftCardFromNonceRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveGiftCardFromNonceRequest(
      nonce: json['nonce'] as String,
    );

Map<String, dynamic> _$RetrieveGiftCardFromNonceRequestToJson(
        RetrieveGiftCardFromNonceRequest instance) =>
    <String, dynamic>{
      'nonce': instance.nonce,
    };

RetrieveGiftCardFromNonceResponse _$RetrieveGiftCardFromNonceResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveGiftCardFromNonceResponse(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveGiftCardFromNonceResponseToJson(
    RetrieveGiftCardFromNonceResponse instance) {
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
