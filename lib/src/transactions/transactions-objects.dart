import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/transactions/transactions-enums-converter.dart';

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

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (locationId != null) body['location_id'] = locationId;
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (tenders != null)
      body['tenders'] = tenders.map((item) => item.toJson()).toList();
    if (refunds != null)
      body['refunds'] = refunds.map((item) => item.toJson()).toList();
    if (referenceId != null) body['reference_id'] = referenceId;
    if (product != null)
      body['product'] = getStringFromTransactionProduct(product);
    if (clientId != null) body['client_id'] = clientId;
    if (shippingAddress != null)
      body['shipping_address'] = shippingAddress.toJson();
    if (orderId != null) body['order_id'] = orderId;

    return body;
  }
}
