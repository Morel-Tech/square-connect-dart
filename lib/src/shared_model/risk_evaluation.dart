import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'risk_evaluation.g.dart';

/// {@template risk_evaluation}
/// Represents fraud risk information for the associated payment.
/// When you take a payment through Square's Payments API (using the
/// CreatePayment endpoint), Square evaluates it and assigns a risk level to
/// the payment. Sellers can use this information to determine the course of
/// action (for example, provide the goods/services or refund the payment).
/// {@endtemplate}
@JsonSerializable()
class RiskEvaluation extends Equatable {
  /// @macro {@macro risk_evaluation}
  const RiskEvaluation({
    this.createdAt,
    this.riskLevel,
  });

  /// Converts a [Map] to an [RiskEvaluation]
  factory RiskEvaluation.fromJson(Map<String, dynamic> json) =>
      _$RiskEvaluationFromJson(json);

  /// Converts a [RiskEvaluation] to a [Map]
  Map<String, dynamic> toJson() => _$RiskEvaluationToJson(this);

  /// Read only The timestamp when payment risk was evaluated, in RFC 3339
  /// format.
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  /// UTC: 2020-01-26T02:25:34Z
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final String? createdAt;

  /// The risk level associated with the payment
  final String? riskLevel;

  @override
  List<Object?> get props => [createdAt, riskLevel];
}
