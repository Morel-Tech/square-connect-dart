// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program_reward_tier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyProgramRewardTier _$LoyaltyProgramRewardTierFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramRewardTier(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      name: json['name'] as String,
      points: json['points'] as int,
      pricingRuleReference: json['pricing_rule_reference'] == null
          ? null
          : CatalogObjectReference.fromJson(
              json['pricing_rule_reference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyProgramRewardTierToJson(
    LoyaltyProgramRewardTier instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'created_at': instance.createdAt.toIso8601String(),
    'name': instance.name,
    'points': instance.points,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'pricing_rule_reference', instance.pricingRuleReference?.toJson());
  return val;
}
