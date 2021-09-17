import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'processing_fee.g.dart';

/// {@template processing_fee}
/// Represents the Square processing fee.
/// {@endtemplate}
@JsonSerializable()
class ProcessingFee extends Equatable {
  /// @macro {@macro processing_fee}
  const ProcessingFee({
    this.amountMoney,
    this.effectiveAt,
    this.type,
  });

  /// Converts a [Map] to an [ProcessingFee]
  factory ProcessingFee.fromJson(Map<String, dynamic> json) =>
      _$ProcessingFeeFromJson(json);

  /// Converts a [ProcessingFee] to a [Map]
  Map<String, dynamic> toJson() => _$ProcessingFeeToJson(this);

  /// The fee amount, which might be negative, that is assessed or adjusted by
  /// Square.
  /// Positive values represent funds being assessed, while negative values
  /// represent funds being returned.
  final Money? amountMoney;

  /// The timestamp of when the fee takes effect, in RFC 3339 format.
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  /// UTC: 2020-01-26T02:25:34Z
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final String? effectiveAt;

  /// The type of fee assessed or adjusted. The fee type can be INITIAL or
  /// ADJUSTMENT.
  final String? type;

  @override
  List<Object?> get props => [amountMoney, effectiveAt, type];
}
