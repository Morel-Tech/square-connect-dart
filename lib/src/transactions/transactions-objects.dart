import 'package:square_connect/square_connect.dart';

/// An object representing a transaction processed with Square, either with the Connect API or with Square Point of Sale.
/// The `tenders` field of this object lists all methods of payment used to pay in the transaction.
class Transaction {
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

  Transaction(
      {this.id,
      this.locationId,
      this.createdAt,
      this.tenders,
      this.refunds,
      this.referenceId,
      this.product,
      this.clientId,
      this.shippingAddress,
      this.orderId});

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      locationId: json['location_id'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      tenders: json['tenders'] != null
          ? (json['tenders'] as List)
              .map((item) => Tender.fromJson(item))
              .toList()
          : null,
      refunds: json['refunds'] != null
          ? (json['refunds'] as List)
              .map((item) => Refund.fromJson(item))
              .toList()
          : null,
      referenceId: json['reference_id'],
      clientId: json['client_id'],
      shippingAddress: json['shipping_address'] != null
          ? Address.fromJson(json['shipping_address'])
          : null,
      orderId: json['order_id'],
    );
  }
}
