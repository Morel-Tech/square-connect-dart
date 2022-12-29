import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'refund.g.dart';

/// An object representing a refund processed for a Square transaction.
@JsonSerializable()
class Refund extends Equatable {
  const Refund({
    required this.id,
    required this.locationId,
    required this.transactionId,
    required this.tenderId,
    required this.createdAt,
    required this.reason,
    required this.amountMoney,
    required this.status,
    required this.processingFeeMoney,
    required this.additionalRecipients,
  });

  /// Converts a [Map] to an [Refund]
  factory Refund.fromJson(Map<String, dynamic> json) => _$RefundFromJson(json);

  /// Converts a [Refund] to a [Map]
  Map<String, dynamic> toJson() => _$RefundToJson(this);

  final String id;
  final String locationId;
  final String transactionId;
  final String tenderId;
  final DateTime createdAt;
  final String reason;
  final Money amountMoney;
  final PaymentRefundStatus status;
  final Money processingFeeMoney;
  final List<AdditionalRecipient> additionalRecipients;

  @override
  List<Object?> get props {
    return [
      id,
      locationId,
      transactionId,
      tenderId,
      createdAt,
      reason,
      amountMoney,
      status,
      processingFeeMoney,
      additionalRecipients,
    ];
  }
}
