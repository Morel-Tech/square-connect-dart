// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyProgram _$LoyaltyProgramFromJson(Map<String, dynamic> json) =>
    LoyaltyProgram(
      id: json['id'] as String,
      accrualRules: (json['accrual_rules'] as List<dynamic>)
          .map((e) =>
              LoyaltyProgramAccrualRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      rewardTiers: (json['reward_tiers'] as List<dynamic>)
          .map((e) =>
              LoyaltyProgramRewardTier.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      terminology: LoyaltyProgramTerminology.fromJson(
          json['terminology'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      expirationPolicy: json['expiration_policy'] == null
          ? null
          : LoyaltyProgramExpirationPolicy.fromJson(
              json['expiration_policy'] as Map<String, dynamic>),
      locationIds: (json['location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LoyaltyProgramToJson(LoyaltyProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accrual_rules': instance.accrualRules.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
      'reward_tiers': instance.rewardTiers.map((e) => e.toJson()).toList(),
      'status': instance.status,
      'terminology': instance.terminology.toJson(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'expiration_policy': instance.expirationPolicy?.toJson(),
      'location_ids': instance.locationIds,
    };
