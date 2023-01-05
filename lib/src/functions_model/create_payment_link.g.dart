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
        CreatePaymentLinkRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'description': instance.description,
      'quick_pay': instance.quickPay?.toJson(),
      'order': instance.order?.toJson(),
      'checkout_options': instance.checkoutOptions?.toJson(),
      'pre_populated_data': instance.prePopulatedData?.toJson(),
      'payment_note': instance.paymentNote,
    };

CreatePaymentLinkResponse _$CreatePaymentLinkResponseFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentLinkResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentLink: json['payment_link'] == null
          ? null
          : PaymentLink.fromJson(json['payment_link'] as Map<String, dynamic>),
      relatedResources: json['related_resources'],
    );

Map<String, dynamic> _$CreatePaymentLinkResponseToJson(
        CreatePaymentLinkResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'payment_link': instance.paymentLink?.toJson(),
      'related_resources': instance.relatedResources,
    };
