// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event_redeem_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEventRedeemReward _$LoyaltyEventRedeemRewardFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEventRedeemReward(
      loyaltyProgramId: json['loyalty_program_id'] as String,
      orderId: json['order_id'] as String?,
      rewardId: json['reward_id'] as String?,
    );

Map<String, dynamic> _$LoyaltyEventRedeemRewardToJson(
    LoyaltyEventRedeemReward instance) {
  final val = <String, dynamic>{
    'loyalty_program_id': instance.loyaltyProgramId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_id', instance.orderId);
  writeNotNull('reward_id', instance.rewardId);
  return val;
}
