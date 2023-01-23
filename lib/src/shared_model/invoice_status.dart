import 'package:json_annotation/json_annotation.dart';

enum InvoiceStatus {
  /// The invoice is a draft. You must publish a draft invoice before Square
  /// can process it. A draft invoice has no `public_url`, so it is not
  /// available to customers.
  @JsonValue('DRAFT')
  draft,

  /// The invoice is published but not yet paid.
  @JsonValue('UNPAID')
  unpaid,

  /// The invoice is scheduled to be processed. On the scheduled date, Square
  /// sends the invoice, initiates an automatic payment, or takes no action,
  /// depending on the delivery method and payment request settings. Square
  /// also sets the invoice status to the appropriate state: `UNPAID`, `PAID`,
  /// `PARTIALLY_PAID`, or `PAYMENT_PENDING`.
  @JsonValue('SCHEDULED')
  scheduled,

  /// A partial payment is received for the invoice.
  @JsonValue('PARTIALLY_PAID')
  partiallyPaid,

  /// The customer paid the invoice in full.
  @JsonValue('PAID')
  paid,

  /// The invoice is paid (or partially paid) and some but not all the
  /// amount paid is refunded.
  @JsonValue('PARTIALLY_REFUNDED')
  partiallyRefunded,

  /// The full amount that the customer paid for the invoice is refunded.
  @JsonValue('REFUNDED')
  refunded,

  /// The invoice is canceled. Square no longer requests payments from the
  /// customer. The `public_url` page remains and is accessible, but it
  /// displays the invoice as canceled and does not accept payment.
  @JsonValue('CANCELED')
  canceled,

  /// Square canceled the invoice due to suspicious activity.
  @JsonValue('FAILED')
  failed,

  /// A payment on the invoice was initiated but has not yet been processed.
  ///
  /// When in this state, invoices cannot be updated and other payments
  /// cannot be initiated.
  @JsonValue('PAYMENT_PENDING')
  paymentPending,
}
