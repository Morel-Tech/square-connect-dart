import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice_payment_request.g.dart';

@JsonSerializable()
class InvoicePaymentRequest extends Equatable {
  const InvoicePaymentRequest({
    this.automaticPaymentSource,
    this.cardId,
    this.computedAmountMoney,
    this.dueDate,
    this.fixedAmountRequestedMoney,
    this.percentageRequested,
    this.reminders,
    this.requestType,
    this.roundedAdjustmentIncludedMoney,
    this.tippingEnabled,
    this.totalCompletedAmountMoney,
    this.uid,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoicePaymentRequest]
  factory InvoicePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$InvoicePaymentRequestFromJson(json);

  /// Converts a [InvoicePaymentRequest] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoicePaymentRequestToJson(this);

  /// The payment method for an automatic payment.
  ///
  /// The default value is NONE.
  final InvoiceAutomaticPaymentSource? automaticPaymentSource;

  /// The ID of the credit or debit card on file to charge for the payment
  /// request. To get the cards on file for a customer, call ListCards and
  /// include the `customer_id` of the invoice recipient.
  final String? cardId;

  /// **Read only** The amount of the payment request, computed using the
  /// order amount and information from the various payment request fields
  /// (`request_type`, `fixed_amount_requested_money`, and
  /// `percentage_requested`).
  final Money? computedAmountMoney;

  /// he due date (in the invoice's time zone) for the payment request, in
  /// `YYYY-MM-DD` format. This field is required to create a payment request.
  /// If an `automatic_payment_source` is defined for the request, Square
  /// charges the payment source on this date.
  ///
  /// After this date, the invoice becomes overdue. For example, a payment
  /// `due_date` of 2021-03-09 with a `timezone` of America/Los_Angeles
  /// becomes overdue at midnight on March 9 in America/Los_Angeles
  /// (which equals a UTC timestamp of 2021-03-10T08:00:00Z).
  final String? dueDate;

  /// If the payment request specifies `DEPOSIT` or `INSTALLMENT` as the
  /// `request_type`, this indicates the request amount. You cannot specify
  /// this when `request_type` is `BALANCE` or when the payment request includes
  ///  the `percentage_requested` field.
  final Money? fixedAmountRequestedMoney;

  /// Specifies the amount for the payment request in percentage:
  ///
  /// - When the payment `request_type` is `DEPOSIT`, it is the percentage of
  /// the order's total amount.
  /// - When the payment `request_type` is `INSTALLMENT`, it is the percentage
  /// of the order's total less the deposit, if requested. The sum of the
  /// `percentage_requested` in all installment payment requests must be equal
  /// to 100.
  ///
  /// You cannot specify this when the payment `request_type` is `BALANCE` or
  /// when the payment request specifies the `fixed_amount_requested_money`
  /// field.
  final String? percentageRequested;

  /// A list of one or more reminders to send for the payment request.
  final List<InvoicePaymentReminder>? reminders;

  /// Identifies the payment request type. This type defines how the payment
  /// request amount is determined. This field is required to create a payment
  /// request.
  final InvoiceRequestType? requestType;

  /// **Read only** If the most recent payment was a cash payment in a currency
  /// that rounds cash payments (such as, `CAD` or `AUD`) and the payment is
  /// rounded from computed_amount_money in the payment request, then this
  /// field specifies the rounding adjustment applied. This amount might be
  /// negative.
  final Money? roundedAdjustmentIncludedMoney;

  /// If set to true, the Square-hosted invoice page (the public_url field of
  /// the invoice) provides a place for the customer to pay a tip.
  ///
  /// This field is allowed only on the final payment request and the payment
  /// `request_type` must be `BALANCE` or `INSTALLMENT`.
  final bool? tippingEnabled;

  /// **Read only** The amount of money already paid for the specific payment
  /// request. This amount might include a rounding adjustment if the most
  /// recent invoice payment was in cash in a currency that rounds cash
  /// payments (such as, `CAD` or `AUD`).
  final Money? totalCompletedAmountMoney;

  /// The Square-generated ID of the payment request in an invoice.
  final String? uid;

  @override
  List<Object?> get props => [
        automaticPaymentSource,
        cardId,
        computedAmountMoney,
        dueDate,
        fixedAmountRequestedMoney,
        percentageRequested,
        reminders,
        requestType,
        roundedAdjustmentIncludedMoney,
        tippingEnabled,
        totalCompletedAmountMoney,
        uid,
      ];
}
