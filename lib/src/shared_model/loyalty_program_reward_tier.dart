import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_program_reward_tier.g.dart';

@JsonSerializable()
class LoyaltyProgramRewardTier extends Equatable {
  const LoyaltyProgramRewardTier({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.points,
    this.pricingRuleReference,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyProgramRewardTier]
  factory LoyaltyProgramRewardTier.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramRewardTierFromJson(json);

  /// Converts a [LoyaltyProgramRewardTier] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyProgramRewardTierToJson(this);

  final String id;
  final DateTime createdAt;
  final String name;
  final int points;
  final CatalogObjectReference? pricingRuleReference;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        name,
        points,
        pricingRuleReference,
      ];
}
