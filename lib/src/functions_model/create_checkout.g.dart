// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCheckoutRequest _$CreateCheckoutRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCheckoutRequest(
      idempotencyKey: json['idempotency_key'] as String,
      order: CreateCheckoutRequestOrder.fromJson(
          json['order'] as Map<String, dynamic>),
      askForShippingAddress: json['ask_for_shipping_address'] as bool?,
      merchantSupportEmail: json['merchant_support_email'] as String?,
      prePopulateBuyerEmail: json['pre_populate_buyer_email'] as String?,
      prePopulateShippingAddress: json['pre_populate_shipping_address'] == null
          ? null
          : Address.fromJson(
              json['pre_populate_shipping_address'] as Map<String, dynamic>),
      redirectUrl: json['redirect_url'] as String?,
      additionalRecipients: (json['additional_recipients'] as List<dynamic>?)
          ?.map((e) => ChargeRequestAdditionalRecipient.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$CreateCheckoutRequestToJson(
        CreateCheckoutRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'order': instance.order.toJson(),
      'ask_for_shipping_address': instance.askForShippingAddress,
      'merchant_support_email': instance.merchantSupportEmail,
      'pre_populate_buyer_email': instance.prePopulateBuyerEmail,
      'pre_populate_shipping_address':
          instance.prePopulateShippingAddress?.toJson(),
      'redirect_url': instance.redirectUrl,
      'additional_recipients':
          instance.additionalRecipients?.map((e) => e.toJson()).toList(),
      'note': instance.note,
    };

CreateCheckoutRequestOrder _$CreateCheckoutRequestOrderFromJson(
        Map<String, dynamic> json) =>
    CreateCheckoutRequestOrder(
      idempotencyKey: json['idempotency_key'] as String,
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCheckoutRequestOrderToJson(
        CreateCheckoutRequestOrder instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'order': instance.order.toJson(),
    };

CreateCheckoutResponse _$CreateCheckoutResponseFromJson(
        Map<String, dynamic> json) =>
    CreateCheckoutResponse(
      checkout: json['checkout'] == null
          ? null
          : Checkout.fromJson(json['checkout'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateCheckoutResponseToJson(
        CreateCheckoutResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'checkout': instance.checkout?.toJson(),
    };
