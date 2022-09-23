// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_adjust_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventAdjustPoints _$LoyaltyEventAdjustPointsFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventAdjustPoints(
      points: json['points'] as int,
      loyaltyProgramId: json['loyalty_program_id'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$LoyaltyEventAdjustPointsToJson(
        LoyaltyEventAdjustPoints instance) =>
    <String, dynamic>{
      'points': instance.points,
      'loyalty_program_id': instance.loyaltyProgramId,
      'reason': instance.reason,
    };
