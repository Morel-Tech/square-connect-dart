// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_loyalty_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteLoyaltyReward _$DeleteLoyaltyRewardFromJson(Map<String, dynamic> json) =>
    DeleteLoyaltyReward(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeleteLoyaltyRewardToJson(
        DeleteLoyaltyReward instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };
