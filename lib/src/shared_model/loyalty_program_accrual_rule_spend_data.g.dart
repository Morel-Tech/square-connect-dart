// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program_accrual_rule_spend_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyProgramAccrualRuleSpendData _$LoyaltyProgramAccrualRuleSpendDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramAccrualRuleSpendData(
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      taxMode: json['tax_mode'] as String,
      excludedCategoryIds: (json['excluded_category_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      excludedItemVariationIds:
          (json['excluded_item_variation_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$LoyaltyProgramAccrualRuleSpendDataToJson(
    LoyaltyProgramAccrualRuleSpendData instance) {
  final val = <String, dynamic>{
    'amount_money': instance.amountMoney.toJson(),
    'tax_mode': instance.taxMode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('excluded_category_ids', instance.excludedCategoryIds);
  writeNotNull(
      'excluded_item_variation_ids', instance.excludedItemVariationIds);
  return val;
}
