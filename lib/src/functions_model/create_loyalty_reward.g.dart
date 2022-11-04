// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_loyalty_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLoyaltyRewardRequest _$CreateLoyaltyRewardRequestFromJson(
        Map<String, dynamic> json) =>
    CreateLoyaltyRewardRequest(
      reward: LoyaltyReward.fromJson(json['reward'] as Map<String, dynamic>),
      idempotenceKey: json['idempotence_key'] as String,
    );

Map<String, dynamic> _$CreateLoyaltyRewardRequestToJson(
        CreateLoyaltyRewardRequest instance) =>
    <String, dynamic>{
      'reward': instance.reward.toJson(),
      'idempotence_key': instance.idempotenceKey,
    };

CreateLoyaltyRewardResponse _$CreateLoyaltyRewardResponseFromJson(
        Map<String, dynamic> json) =>
    CreateLoyaltyRewardResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      reward: json['reward'] == null
          ? null
          : LoyaltyReward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateLoyaltyRewardResponseToJson(
        CreateLoyaltyRewardResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'reward': instance.reward?.toJson(),
    };
