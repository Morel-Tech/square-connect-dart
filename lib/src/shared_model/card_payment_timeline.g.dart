// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_payment_timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardPaymentTimeline _$CardPaymentTimelineFromJson(Map<String, dynamic> json) =>
    CardPaymentTimeline(
      authorizedAt: json['authorized_at'] as String?,
      capturedAt: json['captured_at'] as String?,
      voidedAt: json['voided_at'] as String?,
    );

Map<String, dynamic> _$CardPaymentTimelineToJson(CardPaymentTimeline instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authorized_at', instance.authorizedAt);
  writeNotNull('captured_at', instance.capturedAt);
  writeNotNull('voided_at', instance.voidedAt);
  return val;
}
