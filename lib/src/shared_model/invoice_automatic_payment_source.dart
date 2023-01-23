import 'package:json_annotation/json_annotation.dart';

enum InvoiceAutomaticPaymentSource {
  /// An automatic payment is not configured for the payment request.
  @JsonValue('NONE')
  none,

  /// Use a card on file as the automatic payment method. On the due date,
  /// Square charges the card for the amount of the payment request.
  ///
  /// For `CARD_ON_FILE` payments, the invoice delivery method must be `EMAIL`
  /// and `card_id` must be specified for the payment request before the
  /// invoice can be published.
  @JsonValue('CARD_ON_FILE')
  cardOnFile,

  /// Use a bank account on file as the automatic payment method. On the due
  /// date, Square charges the bank account for the amount of the payment
  /// request.
  ///
  /// This payment method applies only to recurring invoices that sellers
  /// create in the Seller Dashboard or other Square first-party applications.
  /// The bank account is provided by the customer during the payment flow.
  ///
  /// You cannot set BANK_ON_FILE as a payment method using the Invoices API,
  /// but you can change a `BANK_ON_FILE` payment method to `NONE` or
  /// `CARD_ON_FILE`. For `BANK_ON_FILE` payments, the invoice delivery method
  /// must be `EMAIL`.
  @JsonValue('BANK_ON_FILE')
  bankOnFile,
}
