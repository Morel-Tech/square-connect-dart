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
    CreateCheckoutRequest instance) {
  final val = <String, dynamic>{
    'idempotency_key': instance.idempotencyKey,
    'order': instance.order.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ask_for_shipping_address', instance.askForShippingAddress);
  writeNotNull('merchant_support_email', instance.merchantSupportEmail);
  writeNotNull('pre_populate_buyer_email', instance.prePopulateBuyerEmail);
  writeNotNull('pre_populate_shipping_address',
      instance.prePopulateShippingAddress?.toJson());
  writeNotNull('redirect_url', instance.redirectUrl);
  writeNotNull('additional_recipients',
      instance.additionalRecipients?.map((e) => e.toJson()).toList());
  writeNotNull('note', instance.note);
  return val;
}

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
    CreateCheckoutResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('checkout', instance.checkout?.toJson());
  return val;
}
