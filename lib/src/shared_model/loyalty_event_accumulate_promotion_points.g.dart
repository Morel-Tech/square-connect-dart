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
        LoyaltyEventAccumulatePromotionPoints instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'points': instance.points,
      'loyalty_program_id': instance.loyaltyProgramId,
      'loyalty_promotion_id': instance.loyaltyPromotionId,
    };
