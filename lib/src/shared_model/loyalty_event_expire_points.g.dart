// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_expire_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventExpirePoints _$LoyaltyEventExpirePointsFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventExpirePoints(
      loyaltyProgramId: json['loyalty_program_id'] as String,
      points: json['points'] as int,
    );

Map<String, dynamic> _$LoyaltyEventExpirePointsToJson(
        LoyaltyEventExpirePoints instance) =>
    <String, dynamic>{
      'loyalty_program_id': instance.loyaltyProgramId,
      'points': instance.points,
    };
