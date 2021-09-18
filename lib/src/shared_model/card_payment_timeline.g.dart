// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_payment_timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardPaymentTimeline _$CardPaymentTimelineFromJson(Map<String, dynamic> json) =>
    CardPaymentTimeline(
      authorizedAt: json['authorizedAt'] as String?,
      capturedAt: json['capturedAt'] as String?,
      voidedAt: json['voidedAt'] as String?,
    );

Map<String, dynamic> _$CardPaymentTimelineToJson(
        CardPaymentTimeline instance) =>
    <String, dynamic>{
      'authorizedAt': instance.authorizedAt,
      'capturedAt': instance.capturedAt,
      'voidedAt': instance.voidedAt,
    };
