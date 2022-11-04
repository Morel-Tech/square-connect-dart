// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyReward _$LoyaltyRewardFromJson(Map<String, dynamic> json) =>
    LoyaltyReward(
      id: json['id'] as String?,
      loyaltyAccountId: json['loyalty_account_id'] as String,
      rewardTierId: json['reward_tier_id'] as String,
      createdAt: json['created_at'] as String?,
      orderId: json['order_id'] as String?,
      points: json['points'] as int?,
      redeemedAt: json['redeemed_at'] as String?,
      status: $enumDecodeNullable(_$LoyaltyRewardStatusEnumMap, json['status']),
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$LoyaltyRewardToJson(LoyaltyReward instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loyalty_account_id': instance.loyaltyAccountId,
      'reward_tier_id': instance.rewardTierId,
      'created_at': instance.createdAt,
      'order_id': instance.orderId,
      'points': instance.points,
      'redeemed_at': instance.redeemedAt,
      'status': _$LoyaltyRewardStatusEnumMap[instance.status],
      'updated_at': instance.updatedAt,
    };

const _$LoyaltyRewardStatusEnumMap = {
  LoyaltyRewardStatus.issued: 'ISSUED',
  LoyaltyRewardStatus.redeemed: 'REDEEMED',
  LoyaltyRewardStatus.deleted: 'DELETED',
};
