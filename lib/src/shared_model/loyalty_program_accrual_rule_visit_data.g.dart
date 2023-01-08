// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program_accrual_rule_visit_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyProgramAccrualRuleVisitData _$LoyaltyProgramAccrualRuleVisitDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramAccrualRuleVisitData(
      taxMode: json['tax_mode'] as String,
      minimumAmountMoney: json['minimum_amount_money'] == null
          ? null
          : Money.fromJson(
              json['minimum_amount_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyProgramAccrualRuleVisitDataToJson(
    LoyaltyProgramAccrualRuleVisitData instance) {
  final val = <String, dynamic>{
    'tax_mode': instance.taxMode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minimum_amount_money', instance.minimumAmountMoney?.toJson());
  return val;
}
