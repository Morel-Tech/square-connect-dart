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

Map<String, dynamic> _$CheckoutToJson(Checkout instance) => <String, dynamic>{
      'id': instance.id,
      'ask_for_shipping_address': instance.askForShippingAddress,
      'checkout_page_url': instance.checkoutPageUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'merchant_support_email': instance.merchantSupportEmail,
      'order': instance.order?.toJson(),
      'pre_populate_buyer_email': instance.prePopulateBuyerEmail,
      'pre_populate_shipping_address':
          instance.prePopulateShippingAddress?.toJson(),
      'redirect_url': instance.redirectUrl,
      'additional_recipients':
          instance.additionalRecipients?.map((e) => e.toJson()).toList(),
    };
