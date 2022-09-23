import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_program_accrual_rule_item_variation_data.g.dart';

@JsonSerializable()
class LoyaltyProgramAccrualRuleItemVariationData extends Equatable {
  const LoyaltyProgramAccrualRuleItemVariationData({
    required this.itemVariationId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [LoyaltyProgramAccrualRuleItemVariationData]
  factory LoyaltyProgramAccrualRuleItemVariationData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyProgramAccrualRuleItemVariationDataFromJson(json);

  /// Converts a [LoyaltyProgramAccrualRuleItemVariationData] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$LoyaltyProgramAccrualRuleItemVariationDataToJson(this);

  final String itemVariationId;

  @override
  List<Object?> get props => [itemVariationId];
}
