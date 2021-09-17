// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_evaluation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiskEvaluation _$RiskEvaluationFromJson(Map<String, dynamic> json) =>
    RiskEvaluation(
      createdAt: json['createdAt'] as String?,
      riskLevel: json['riskLevel'] as String?,
    );

Map<String, dynamic> _$RiskEvaluationToJson(RiskEvaluation instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'riskLevel': instance.riskLevel,
    };
