// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEvent _$LoyaltyEventFromJson(Map<String, dynamic> json) => LoyaltyEvent(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      loyaltyAccountId: json['loyalty_account_id'] as String,
      source: json['source'] as String,
      type: json['type'] as String,
      locationId: json['location_id'] as String?,
      accumulatePoints: json['accumulate_points'] == null
          ? null
          : LoyaltyEventAccumulatePoints.fromJson(
              json['accumulate_points'] as Map<String, dynamic>),
      accumulatePromotionPoints: json['accumulate_promotion_points'] == null
          ? null
          : LoyaltyEventAccumulatePromotionPoints.fromJson(
              json['accumulate_promotion_points'] as Map<String, dynamic>),
      adjustPoints: json['adjust_points'] == null
          ? null
          : LoyaltyEventAdjustPoints.fromJson(
              json['adjust_points'] as Map<String, dynamic>),
      createReward: json['create_reward'] == null
          ? null
          : LoyaltyEventCreateReward.fromJson(
              json['create_reward'] as Map<String, dynamic>),
      deleteReward: json['delete_reward'] == null
          ? null
          : LoyaltyEventDeleteReward.fromJson(
              json['delete_reward'] as Map<String, dynamic>),
      expirePoints: json['expire_points'] == null
          ? null
          : LoyaltyEventExpirePoints.fromJson(
              json['expire_points'] as Map<String, dynamic>),
      otherEvent: json['other_event'] == null
          ? null
          : LoyaltyEventOther.fromJson(
              json['other_event'] as Map<String, dynamic>),
      redeemReward: json['redeem_reward'] == null
          ? null
          : LoyaltyEventRedeemReward.fromJson(
              json['redeem_reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyEventToJson(LoyaltyEvent instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'created_at': instance.createdAt.toIso8601String(),
    'loyalty_account_id': instance.loyaltyAccountId,
    'source': instance.source,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('accumulate_points', instance.accumulatePoints?.toJson());
  writeNotNull('accumulate_promotion_points',
      instance.accumulatePromotionPoints?.toJson());
  writeNotNull('adjust_points', instance.adjustPoints?.toJson());
  writeNotNull('create_reward', instance.createReward?.toJson());
  writeNotNull('delete_reward', instance.deleteReward?.toJson());
  writeNotNull('expire_points', instance.expirePoints?.toJson());
  writeNotNull('other_event', instance.otherEvent?.toJson());
  writeNotNull('redeem_reward', instance.redeemReward?.toJson());
  return val;
}
