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
    LoyaltyEventAccumulatePoints instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loyalty_program_id', instance.loyaltyProgramId);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('points', instance.points);
  return val;
}
