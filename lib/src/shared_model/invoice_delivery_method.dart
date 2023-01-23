import 'package:json_annotation/json_annotation.dart';

enum InvoiceDeliveryMethod {
  /// Directs Square to send invoices, reminders, and receipts to the customer
  /// using email.
  @JsonValue('EMAIL')
  email,

  /// Directs Square to take no action on the invoice. In this case, the
  /// seller or application developer follows up with the customer for payment.
  /// For example, a seller might collect a payment in the Seller Dashboard or
  /// Point of Sale (POS) application. The seller might also share the URL of
  /// the Square-hosted invoice page (`public_url`) with the customer to request
  /// payment.
  @JsonValue('SHARE_MANUALLY')
  shareManually,

  /// Directs Square to send invoices and receipts to the customer using SMS
  /// (text message).
  ///
  /// You cannot set `SMS` as a delivery method using the Invoices API, but
  /// you can change an SMS delivery method to `EMAIL` or `SHARE_MANUALLY`.
  @JsonValue('SMS')
  sms;
}
