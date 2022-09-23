import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_program_accrual_rule_category_data.g.dart';

@JsonSerializable()
class LoyaltyProgramAccrualRuleCategoryData extends Equatable {
  const LoyaltyProgramAccrualRuleCategoryData({
    required this.categoryId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  ///  [LoyaltyProgramAccrualRuleCategoryData]
  factory LoyaltyProgramAccrualRuleCategoryData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyProgramAccrualRuleCategoryDataFromJson(json);

  /// Converts a [LoyaltyProgramAccrualRuleCategoryData] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$LoyaltyProgramAccrualRuleCategoryDataToJson(this);

  final String categoryId;

  @override
  List<Object?> get props => [categoryId];
}
