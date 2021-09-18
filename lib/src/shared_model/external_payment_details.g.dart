// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_payment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalPaymentDetails _$ExternalPaymentDetailsFromJson(
        Map<String, dynamic> json) =>
    ExternalPaymentDetails(
      source: json['source'] as String,
      type: json['type'] as String,
      sourceFeeMoney: json['sourceFeeMoney'] == null
          ? null
          : Money.fromJson(json['sourceFeeMoney'] as Map<String, dynamic>),
      sourceId: json['sourceId'] as String?,
    );

Map<String, dynamic> _$ExternalPaymentDetailsToJson(
        ExternalPaymentDetails instance) =>
    <String, dynamic>{
      'source': instance.source,
      'type': instance.type,
      'sourceFeeMoney': instance.sourceFeeMoney,
      'sourceId': instance.sourceId,
    };
