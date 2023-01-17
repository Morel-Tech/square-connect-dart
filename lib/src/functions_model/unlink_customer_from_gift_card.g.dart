// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlink_customer_from_gift_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnlinkCustomerFromGiftCardRequest _$UnlinkCustomerFromGiftCardRequestFromJson(
        Map<String, dynamic> json) =>
    UnlinkCustomerFromGiftCardRequest(
      customerId: json['customer_id'] as String,
    );

Map<String, dynamic> _$UnlinkCustomerFromGiftCardRequestToJson(
        UnlinkCustomerFromGiftCardRequest instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
    };

UnlinkCustomerFromGiftCardResponse _$UnlinkCustomerFromGiftCardResponseFromJson(
        Map<String, dynamic> json) =>
    UnlinkCustomerFromGiftCardResponse(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UnlinkCustomerFromGiftCardResponseToJson(
    UnlinkCustomerFromGiftCardResponse instance) {
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
