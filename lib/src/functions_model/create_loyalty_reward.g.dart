// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_loyalty_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLoyaltyRewardRequest _$CreateLoyaltyRewardRequestFromJson(
        Map<String, dynamic> json) =>
    CreateLoyaltyRewardRequest(
      reward: LoyaltyReward.fromJson(json['reward'] as Map<String, dynamic>),
      idempotencyKey: json['idempotency_key'] as String,
    );

Map<String, dynamic> _$CreateLoyaltyRewardRequestToJson(
        CreateLoyaltyRewardRequest instance) =>
    <String, dynamic>{
      'reward': instance.reward.toJson(),
      'idempotency_key': instance.idempotencyKey,
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
    CreateLoyaltyRewardResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('reward', instance.reward?.toJson());
  return val;
}
