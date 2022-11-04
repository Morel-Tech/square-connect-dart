// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_loyalty_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteLoyaltyRewardRequest _$DeleteLoyaltyRewardRequestFromJson(
        Map<String, dynamic> json) =>
    DeleteLoyaltyRewardRequest(
      rewardId: json['reward_id'] as String,
    );

Map<String, dynamic> _$DeleteLoyaltyRewardRequestToJson(
        DeleteLoyaltyRewardRequest instance) =>
    <String, dynamic>{
      'reward_id': instance.rewardId,
    };

DeleteLoyaltyRewardResponse _$DeleteLoyaltyRewardResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteLoyaltyRewardResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeleteLoyaltyRewardResponseToJson(
        DeleteLoyaltyRewardResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };
