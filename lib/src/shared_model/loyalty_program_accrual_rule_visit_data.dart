import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_program_accrual_rule_visit_data.g.dart';

@JsonSerializable()
class LoyaltyProgramAccrualRuleVisitData extends Equatable {
  const LoyaltyProgramAccrualRuleVisitData({
    required this.taxMode,
    this.minimumAmountMoney,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [LoyaltyProgramAccrualRuleVisitData]
  factory LoyaltyProgramAccrualRuleVisitData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyProgramAccrualRuleVisitDataFromJson(json);

  /// Converts a [LoyaltyProgramAccrualRuleVisitData] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$LoyaltyProgramAccrualRuleVisitDataToJson(this);

  final String taxMode;
  final Money? minimumAmountMoney;

  @override
  List<Object?> get props => [taxMode, minimumAmountMoney];
}
