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
    LoyaltyEventCreateReward instance) {
  final val = <String, dynamic>{
    'loyalty_program_id': instance.loyaltyProgramId,
    'points': instance.points,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reward_id', instance.rewardId);
  return val;
}
