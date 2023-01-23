import 'package:json_annotation/json_annotation.dart';

enum InvoiceRequestType {
  ///A request for a balance payment. The balance amount is computed as follows:
  ///
  /// - If the invoice specifies only a balance payment request, the balance
  /// amount is the total amount of the associated order.
  /// - If the invoice also specifies a deposit request, the balance amount is
  /// the amount remaining after the deposit.
  ///
  /// `INSTALLMENT` and `BALANCE` payment requests are not allowed in the same
  /// invoice.
  @JsonValue('BALANCE')
  balance,

  /// A request for a deposit payment. You have the option of specifying an
  /// exact amount or a percentage of the total order amount. If you request a
  /// deposit, it must be due before any other payment requests.
  @JsonValue('DEPOSIT')
  deposit,

  /// A request for an installment payment. Installments allow buyers to pay
  /// the invoice over time. Installments can optionally be combined with a
  /// deposit.
  ///
  /// Adding `INSTALLMENT` payment requests to an invoice requires an Invoices
  /// Plus subscription.
  @JsonValue('INSTALLMENT')
  installment,
}
