import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_program_accrual_rule_spend_data.g.dart';

@JsonSerializable()
class LoyaltyProgramAccrualRuleSpendData extends Equatable {
  const LoyaltyProgramAccrualRuleSpendData({
    required this.amountMoney,
    required this.taxMode,
    this.excludedCategoryIds,
    this.excludedItemVariationIds,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [LoyaltyProgramAccrualRuleSpendData]
  factory LoyaltyProgramAccrualRuleSpendData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyProgramAccrualRuleSpendDataFromJson(json);

  /// Converts a [LoyaltyProgramAccrualRuleSpendData] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$LoyaltyProgramAccrualRuleSpendDataToJson(this);

  final Money amountMoney;
  final String taxMode;
  final List<String>? excludedCategoryIds;
  final List<String>? excludedItemVariationIds;

  @override
  List<Object?> get props => [
        amountMoney,
        taxMode,
        excludedCategoryIds,
        excludedItemVariationIds,
      ];
}
