import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice_accepted_payment_methods.g.dart';

@JsonSerializable()
class InvoiceAcceptedPaymentMethods extends Equatable {
  const InvoiceAcceptedPaymentMethods({
    this.bankAccount,
    this.buyNowPayLater,
    this.card,
    this.squareGiftCard,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoiceAcceptedPaymentMethods]
  factory InvoiceAcceptedPaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$InvoiceAcceptedPaymentMethodsFromJson(json);

  /// Converts a [InvoiceAcceptedPaymentMethods] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoiceAcceptedPaymentMethodsToJson(this);

  /// Indicates whether bank transfer payments are accepted. The default value
  /// is `false`.
  ///
  /// This option is allowed only for invoices that have a single payment
  /// request of the `BALANCE` type.
  final bool? bankAccount;

  //// Indicates whether Afterpay (also known as Clearpay) payments are
  /// accepted. The default value is `false`.
  ///
  /// This option is allowed only for invoices that have a single payment
  /// request of the `BALANCE` type. This payment method is supported if the
  /// seller account accepts Afterpay payments and the seller location is in a
  /// country where Afterpay invoice payments are supported. As a best
  /// practice, consider enabling an additional payment method when
  /// allowing `buy_now_pay_later` payments.
  final bool? buyNowPayLater;

  /// Indicates whether credit card or debit card payments are accepted. The
  /// default value is `false`.
  final bool? card;

  /// Indicates whether Square gift card payments are accepted. The default
  /// value is `false`.
  final bool? squareGiftCard;

  @override
  List<Object?> get props => [
        bankAccount,
        buyNowPayLater,
        card,
        squareGiftCard,
      ];
}
