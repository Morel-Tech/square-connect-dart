// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentLinkRequest _$CreatePaymentLinkRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentLinkRequest(
      idempotencyKey: json['idempotency_key'] as String?,
      description: json['description'] as String?,
      quickPay: json['quick_pay'] == null
          ? null
          : QuickPay.fromJson(json['quick_pay'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      checkoutOptions: json['checkout_options'] == null
          ? null
          : CheckoutOptions.fromJson(
              json['checkout_options'] as Map<String, dynamic>),
      prePopulatedData: json['pre_populated_data'] == null
          ? null
          : PrePopulatedData.fromJson(
              json['pre_populated_data'] as Map<String, dynamic>),
      paymentNote: json['payment_note'] as String?,
    );

Map<String, dynamic> _$CreatePaymentLinkRequestToJson(
    CreatePaymentLinkRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('description', instance.description);
  writeNotNull('quick_pay', instance.quickPay?.toJson());
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('checkout_options', instance.checkoutOptions?.toJson());
  writeNotNull('pre_populated_data', instance.prePopulatedData?.toJson());
  writeNotNull('payment_note', instance.paymentNote);
  return val;
}

CreatePaymentLinkResponse _$CreatePaymentLinkResponseFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentLinkResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentLink: json['payment_link'] == null
          ? null
          : PaymentLink.fromJson(json['payment_link'] as Map<String, dynamic>),
      relatedResources: json['related_resources'] == null
          ? null
          : PaymentLinkRelatedResources.fromJson(
              json['related_resources'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePaymentLinkResponseToJson(
    CreatePaymentLinkResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('payment_link', instance.paymentLink?.toJson());
  writeNotNull('related_resources', instance.relatedResources?.toJson());
  return val;
}
