// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_delete_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventDeleteReward _$LoyaltyEventDeleteRewardFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventDeleteReward(
      loyaltyProgramId: json['loyalty_program_id'] as String,
      points: json['points'] as int,
      rewardId: json['reward_id'] as String?,
    );

Map<String, dynamic> _$LoyaltyEventDeleteRewardToJson(
        LoyaltyEventDeleteReward instance) =>
    <String, dynamic>{
      'loyalty_program_id': instance.loyaltyProgramId,
      'points': instance.points,
      'reward_id': instance.rewardId,
    };
