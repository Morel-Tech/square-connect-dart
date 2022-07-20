// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentLink _$PaymentLinkFromJson(Map<String, dynamic> json) => PaymentLink(
      id: json['id'] as String,
      version: json['version'] as int,
      checkoutOptions: json['checkout_options'] == null
          ? null
          : CheckoutOptions.fromJson(
              json['checkout_options'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      description: json['description'] as String?,
      orderId: json['order_id'] as String?,
      paymentNote: json['payment_note'] as String?,
      prePopulatedData: json['pre_populated_data'] == null
          ? null
          : PrePopulatedData.fromJson(
              json['pre_populated_data'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String,
    );

Map<String, dynamic> _$PaymentLinkToJson(PaymentLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'checkout_options': instance.checkoutOptions?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'order_id': instance.orderId,
      'payment_note': instance.paymentNote,
      'pre_populated_data': instance.prePopulatedData?.toJson(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'url': instance.url,
    };
