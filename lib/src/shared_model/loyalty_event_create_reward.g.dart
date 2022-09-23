// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_create_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventCreateReward _$LoyaltyEventCreateRewardFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventCreateReward(
      loyaltyProgramId: json['loyalty_program_id'] as String,
      points: json['points'] as int,
      rewardId: json['reward_id'] as String?,
    );

Map<String, dynamic> _$LoyaltyEventCreateRewardToJson(
        LoyaltyEventCreateReward instance) =>
    <String, dynamic>{
      'loyalty_program_id': instance.loyaltyProgramId,
      'points': instance.points,
      'reward_id': instance.rewardId,
    };
