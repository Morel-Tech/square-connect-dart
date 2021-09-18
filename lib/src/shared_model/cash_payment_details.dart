import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'cash_payment_details.g.dart';

/// {@template cash_payment_details}
/// Stores details about a cash payment.
/// {@endtemplate}
@JsonSerializable()
class CashPaymentDetails extends Equatable {
  /// @macro {@macro cash_payment_details}
  const CashPaymentDetails({
    required this.buyerSuppliedMoney,
    this.changeBackMoney,
  });

  /// Converts a [Map] to an [CashPaymentDetails]
  factory CashPaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$CashPaymentDetailsFromJson(json);

  /// Converts a [CashPaymentDetails] to a [Map]
  Map<String, dynamic> toJson() => _$CashPaymentDetailsToJson(this);

  /// The amount and currency of the money supplied by the buyer.
  final Money buyerSuppliedMoney;

  /// The amount of change due back to the buyer. This read-only field is
  /// calculated from the amount_money and buyer_supplied_money fields.
  final Money? changeBackMoney;

  @override
  List<Object?> get props => [buyerSuppliedMoney, changeBackMoney];
}
