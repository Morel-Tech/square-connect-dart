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
    LoyaltyEventAdjustPoints instance) {
  final val = <String, dynamic>{
    'points': instance.points,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loyalty_program_id', instance.loyaltyProgramId);
  writeNotNull('reason', instance.reason);
  return val;
}
