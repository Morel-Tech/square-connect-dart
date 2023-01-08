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
      sourceFeeMoney: json['source_fee_money'] == null
          ? null
          : Money.fromJson(json['source_fee_money'] as Map<String, dynamic>),
      sourceId: json['source_id'] as String?,
    );

Map<String, dynamic> _$ExternalPaymentDetailsToJson(
    ExternalPaymentDetails instance) {
  final val = <String, dynamic>{
    'source': instance.source,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source_fee_money', instance.sourceFeeMoney?.toJson());
  writeNotNull('source_id', instance.sourceId);
  return val;
}
