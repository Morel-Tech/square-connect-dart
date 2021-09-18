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

Map<String, dynamic> _$RiskEvaluationToJson(RiskEvaluation instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'risk_level': instance.riskLevel,
    };
