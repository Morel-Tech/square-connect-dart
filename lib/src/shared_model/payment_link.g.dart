// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentLink _$PaymentLinkFromJson(Map<String, dynamic> json) => PaymentLink(
      id: json['id'] as String,
      version: json['version'] as int?,
      checkoutOptions: json['checkout_options'] == null
          ? null
          : CheckoutOptions.fromJson(
              json['checkout_options'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      description: json['description'] as String?,
      orderId: json['order_id'] as String?,
      paymentNote: json['payment_note'] as String?,
      prePopulatedData: json['pre_populated_data'] == null
          ? null
          : PrePopulatedData.fromJson(
              json['pre_populated_data'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$PaymentLinkToJson(PaymentLink instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  writeNotNull('checkout_options', instance.checkoutOptions?.toJson());
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('description', instance.description);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('payment_note', instance.paymentNote);
  writeNotNull('pre_populated_data', instance.prePopulatedData?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('url', instance.url);
  return val;
}
