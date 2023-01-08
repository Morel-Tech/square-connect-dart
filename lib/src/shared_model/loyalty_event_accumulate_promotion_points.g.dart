// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_accumulate_promotion_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventAccumulatePromotionPoints
    _$LoyaltyEventAccumulatePromotionPointsFromJson(
            Map<String, dynamic> json) =>
        LoyaltyEventAccumulatePromotionPoints(
          orderId: json['order_id'] as String,
          points: json['points'] as int,
          loyaltyProgramId: json['loyalty_program_id'] as String?,
          loyaltyPromotionId: json['loyalty_promotion_id'] as String?,
        );

Map<String, dynamic> _$LoyaltyEventAccumulatePromotionPointsToJson(
    LoyaltyEventAccumulatePromotionPoints instance) {
  final val = <String, dynamic>{
    'order_id': instance.orderId,
    'points': instance.points,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loyalty_program_id', instance.loyaltyProgramId);
  writeNotNull('loyalty_promotion_id', instance.loyaltyPromotionId);
  return val;
}
