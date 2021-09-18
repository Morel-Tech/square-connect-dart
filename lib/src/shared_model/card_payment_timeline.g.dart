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

Map<String, dynamic> _$CardPaymentTimelineToJson(
        CardPaymentTimeline instance) =>
    <String, dynamic>{
      'authorized_at': instance.authorizedAt,
      'captured_at': instance.capturedAt,
      'voided_at': instance.voidedAt,
    };
