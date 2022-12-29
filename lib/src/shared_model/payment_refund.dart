import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'payment_refund.g.dart';

@JsonSerializable()
class PaymentRefund extends Equatable {
  const PaymentRefund({
    required this.id,
    required this.amountMoney,
    required this.appFeeMoney,
    required this.createdAt,
    required this.locationId,
    required this.orderId,
    required this.paymentId,
    required this.processingFee,
    required this.reason,
    required this.status,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [PaymentRefund]
  factory PaymentRefund.fromJson(Map<String, dynamic> json) =>
      _$PaymentRefundFromJson(json);

  /// Converts a [PaymentRefund] to a [Map]
  Map<String, dynamic> toJson() => _$PaymentRefundToJson(this);

  final String id;
  final Money amountMoney;
  final Money appFeeMoney;
  final DateTime createdAt;
  final String locationId;
  final String orderId;
  final String paymentId;
  final List<ProcessingFee> processingFee;
  final String reason;
  final PaymentRefundStatus status;
  final DateTime updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      amountMoney,
      appFeeMoney,
      createdAt,
      locationId,
      orderId,
      paymentId,
      processingFee,
      reason,
      status,
      updatedAt,
    ];
  }
}
