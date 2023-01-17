// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_customer_to_gift_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkCustomerToGiftCardRequest _$LinkCustomerToGiftCardRequestFromJson(
        Map<String, dynamic> json) =>
    LinkCustomerToGiftCardRequest(
      customerId: json['customer_id'] as String,
    );

Map<String, dynamic> _$LinkCustomerToGiftCardRequestToJson(
        LinkCustomerToGiftCardRequest instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
    };

LinkCustomerToGiftCardResponse _$LinkCustomerToGiftCardResponseFromJson(
        Map<String, dynamic> json) =>
    LinkCustomerToGiftCardResponse(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LinkCustomerToGiftCardResponseToJson(
    LinkCustomerToGiftCardResponse instance) {
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
