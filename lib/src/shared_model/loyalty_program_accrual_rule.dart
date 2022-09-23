import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_program_accrual_rule.g.dart';

@JsonSerializable()
class LoyaltyProgramAccrualRule extends Equatable {
  const LoyaltyProgramAccrualRule({
    required this.accrualType,
    this.categoryData,
    this.itemVariationData,
    this.points,
    this.spendData,
    this.visitData,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyProgramAccrualRule]
  factory LoyaltyProgramAccrualRule.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramAccrualRuleFromJson(json);

  /// Converts a [LoyaltyProgramAccrualRule] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyProgramAccrualRuleToJson(this);

  final String accrualType;
  final LoyaltyProgramAccrualRuleCategoryData? categoryData;
  final LoyaltyProgramAccrualRuleItemVariationData? itemVariationData;
  final int? points;
  final LoyaltyProgramAccrualRuleSpendData? spendData;
  final LoyaltyProgramAccrualRuleVisitData? visitData;

  @override
  List<Object?> get props => [
        accrualType,
        categoryData,
        itemVariationData,
        points,
        spendData,
        visitData,
      ];
}
