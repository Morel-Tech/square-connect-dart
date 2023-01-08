// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_evaluation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiskEvaluation _$RiskEvaluationFromJson(Map<String, dynamic> json) =>
    RiskEvaluation(
      createdAt: json['created_at'] as String?,
      riskLevel: json['risk_level'] as String?,
    );

Map<String, dynamic> _$RiskEvaluationToJson(RiskEvaluation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('risk_level', instance.riskLevel);
  return val;
}
