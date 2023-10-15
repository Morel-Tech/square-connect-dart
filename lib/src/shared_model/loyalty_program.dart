import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_program.g.dart';

@JsonSerializable()
class LoyaltyProgram extends Equatable {
  const LoyaltyProgram({
    required this.id,
    required this.accrualRules,
    required this.createdAt,
    required this.rewardTiers,
    required this.status,
    required this.terminology,
    required this.updatedAt,
    this.expirationPolicy,
    this.locationIds,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyProgram]
  factory LoyaltyProgram.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramFromJson(json);

  /// Converts a [LoyaltyProgram] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyProgramToJson(this);

  final String id;
  final List<LoyaltyProgramAccrualRule> accrualRules;
  final DateTime createdAt;
  final List<LoyaltyProgramRewardTier> rewardTiers;
  final String status;
  final LoyaltyProgramTerminology terminology;
  final DateTime updatedAt;
  final LoyaltyProgramExpirationPolicy? expirationPolicy;
  final List<String>? locationIds;

  @override
  List<Object?> get props => [
        id,
        accrualRules,
        createdAt,
        rewardTiers,
        status,
        terminology,
        updatedAt,
        expirationPolicy,
        locationIds,
      ];
}
