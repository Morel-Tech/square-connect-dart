// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_loyalty_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveLoyaltyRewardResponse _$RetrieveLoyaltyRewardResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveLoyaltyRewardResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      reward: json['reward'] == null
          ? null
          : LoyaltyReward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RetrieveLoyaltyRewardResponseToJson(
        RetrieveLoyaltyRewardResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'reward': instance.reward?.toJson(),
    };
