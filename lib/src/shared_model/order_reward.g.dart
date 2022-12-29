// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReward _$OrderRewardFromJson(Map<String, dynamic> json) => OrderReward(
      id: json['id'] as String,
      rewardTierId: json['reward_tier_id'] as String,
    );

Map<String, dynamic> _$OrderRewardToJson(OrderReward instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reward_tier_id': instance.rewardTierId,
    };
