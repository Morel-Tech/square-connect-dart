// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyReward _$LoyaltyRewardFromJson(Map<String, dynamic> json) =>
    LoyaltyReward(
      loyaltyAccountId: json['loyalty_account_id'] as String,
      rewardTierId: json['reward_tier_id'] as String,
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      orderId: json['order_id'] as String?,
      points: json['points'] as int?,
      redeemedAt: json['redeemed_at'] as String?,
      status: $enumDecodeNullable(_$LoyaltyRewardStatusEnumMap, json['status']),
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$LoyaltyRewardToJson(LoyaltyReward instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['loyalty_account_id'] = instance.loyaltyAccountId;
  val['reward_tier_id'] = instance.rewardTierId;
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('points', instance.points);
  writeNotNull('redeemed_at', instance.redeemedAt);
  writeNotNull('status', _$LoyaltyRewardStatusEnumMap[instance.status]);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

const _$LoyaltyRewardStatusEnumMap = {
  LoyaltyRewardStatus.issued: 'ISSUED',
  LoyaltyRewardStatus.redeemed: 'REDEEMED',
  LoyaltyRewardStatus.deleted: 'DELETED',
};
