// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Checkout _$CheckoutFromJson(Map<String, dynamic> json) => Checkout(
      id: json['id'] as String,
      askForShippingAddress: json['ask_for_shipping_address'] as bool?,
      checkoutPageUrl: json['checkout_page_url'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      merchantSupportEmail: json['merchant_support_email'] as String?,
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      prePopulateBuyerEmail: json['pre_populate_buyer_email'] as String?,
      prePopulateShippingAddress: json['pre_populate_shipping_address'] == null
          ? null
          : Address.fromJson(
              json['pre_populate_shipping_address'] as Map<String, dynamic>),
      redirectUrl: json['redirect_url'] as String?,
      additionalRecipients: (json['additional_recipients'] as List<dynamic>?)
          ?.map((e) => AdditionalRecipient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CheckoutToJson(Checkout instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ask_for_shipping_address', instance.askForShippingAddress);
  writeNotNull('checkout_page_url', instance.checkoutPageUrl);
  val['created_at'] = instance.createdAt.toIso8601String();
  writeNotNull('merchant_support_email', instance.merchantSupportEmail);
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('pre_populate_buyer_email', instance.prePopulateBuyerEmail);
  writeNotNull('pre_populate_shipping_address',
      instance.prePopulateShippingAddress?.toJson());
  writeNotNull('redirect_url', instance.redirectUrl);
  writeNotNull('additional_recipients',
      instance.additionalRecipients?.map((e) => e.toJson()).toList());
  return val;
}
