// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_accumulate_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventAccumulatePoints _$LoyaltyEventAccumulatePointsFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventAccumulatePoints(
      loyaltyProgramId: json['loyalty_program_id'] as String?,
      orderId: json['order_id'] as String?,
      points: json['points'] as int?,
    );

Map<String, dynamic> _$LoyaltyEventAccumulatePointsToJson(
        LoyaltyEventAccumulatePoints instance) =>
    <String, dynamic>{
      'loyalty_program_id': instance.loyaltyProgramId,
      'order_id': instance.orderId,
      'points': instance.points,
    };
