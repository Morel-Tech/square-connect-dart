import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/refunds/refunds-enums-converter.dart';

/// An object representing a refund processed for a Square transaction.
class Refund {
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

  Refund(
      {this.id,
      this.locationId,
      this.transactionId,
      this.tenderId,
      this.createdAt,
      this.reason,
      this.amountMoney,
      this.status,
      this.processingFeeMoney,
      this.additionalRecipients});

  factory Refund.fromJson(Map<dynamic, dynamic> json) {
    return Refund(
      id: json['id'],
      locationId: json['location_id'],
      transactionId: json['transaction_id'],
      tenderId: json['tender_id'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      reason: json['reason'],
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      status: json['status'] != null
          ? getPaymentRefundStatusFromString(json['status'])
          : null,
      processingFeeMoney: json['processing_fee_money'] != null
          ? Money.fromJson(json['processing_fee_money'])
          : null,
      additionalRecipients: json['additional_recipients'] != null
          ? (json['additional_recipients'] as List)
              .map((item) => AdditionalRecipient.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (locationId != null) body['location_id'] = locationId;
    if (transactionId != null) body['transaction_id'] = transactionId;
    if (tenderId != null) body['tender_id'] = tenderId;
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (reason != null) body['reason'] = reason;
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (status != null)
      body['status'] = getStringFromPaymentRefundStatus(status);
    if (processingFeeMoney != null)
      body['processing_fee_money'] = processingFeeMoney.toJson();
    if (additionalRecipients != null)
      body['additional_recipients'] =
          additionalRecipients.map((item) => item.toJson()).toList();

    return body;
  }
}

class PaymentRefund {
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

  PaymentRefund(
      {this.id,
      this.amountMoney,
      this.appFeeMoney,
      this.createdAt,
      this.locationId,
      this.orderId,
      this.paymentId,
      this.processingFee,
      this.reason,
      this.status,
      this.updatedAt});

  factory PaymentRefund.fromJson(Map<dynamic, dynamic> json) {
    return PaymentRefund(
      id: json['id'],
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      appFeeMoney: json['app_fee_money'] != null
          ? Money.fromJson(json['app_fee_money'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      locationId: json['location_id'],
      orderId: json['order_id'],
      paymentId: json['payment_id'],
      processingFee: json['processing_fee'] != null
          ? (json['processing_fee'] as List)
              .map((item) => ProcessingFee.fromJson(item))
              .toList()
          : null,
      reason: json['reason'],
      status: json['status'] != null
          ? getPaymentRefundStatusFromString(json['status'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (amountMoney != null) body['amount_money'] = amountMoney.toJson();
    if (appFeeMoney != null) body['app_fee_money'] = appFeeMoney.toJson();
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (locationId != null) body['location_id'] = locationId;
    if (orderId != null) body['order_id'] = orderId;
    if (paymentId != null) body['payment_id'] = paymentId;
    if (processingFee != null)
      body['processing_fee'] =
          processingFee.map((item) => item.toJson()).toList();
    if (reason != null) body['reason'] = reason;
    if (status != null)
      body['status'] = getStringFromPaymentRefundStatus(status);
    if (updatedAt != null) body['updated_at'] = updatedAt;

    return body;
  }
}
