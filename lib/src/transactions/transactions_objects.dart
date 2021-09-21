import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'transactions_objects.g.dart';

/// An object representing a transaction processed with Square, either with the
/// Connect API or with Square Point of Sale.
/// The `tenders` field of this object lists all methods of payment used to pay
/// in the transaction.
@JsonSerializable()
class Transaction extends Equatable {
  const Transaction({
    required this.id,
    required this.locationId,
    required this.createdAt,
    required this.tenders,
    required this.refunds,
    required this.referenceId,
    required this.product,
    required this.clientId,
    required this.shippingAddress,
    required this.orderId,
  });

  /// Converts a [Map] to an [Transaction]
  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  /// Converts a [Transaction] to a [Map]
  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  final String id;
  final String locationId;
  final DateTime createdAt;
  final List<Tender> tenders;
  final List<Refund> refunds;
  final String referenceId;
  final TransactionProduct product;
  final String clientId;
  final Address shippingAddress;
  final String orderId;

  @override
  List<Object> get props {
    return [
      id,
      locationId,
      createdAt,
      tenders,
      refunds,
      referenceId,
      product,
      clientId,
      shippingAddress,
      orderId,
    ];
  }
}
