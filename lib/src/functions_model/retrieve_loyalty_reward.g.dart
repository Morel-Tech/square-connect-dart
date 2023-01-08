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
    RetrieveLoyaltyRewardResponse instance) {
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
