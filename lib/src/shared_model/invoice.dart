import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice.g.dart';

@JsonSerializable()
class Invoice extends Equatable {
  const Invoice({
    this.id,
    this.version,
    this.locationId,
    this.orderId,
    this.primaryRecipient,
    this.paymentRequests,
    this.deliveryMethod,
    this.invoiceNumber,
    this.title,
    this.description,
    this.scheduledAt,
    this.publicUrl,
    this.nextPaymentAmountMoney,
    this.status,
    this.timezone,
    this.createdAt,
    this.updatedAt,
    this.acceptedPaymentMethods,
    this.customFields,
    this.subscriptionId,
    this.saleOrServiceDate,
    this.paymentConditions,
    this.storePaymentMethodEnabled,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [Invoice]
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  /// Converts a [Invoice] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

  /// **Read only** The Square-assigned ID of the invoice.
  final String? id;

  /// The Square-assigned version number, which is incremented each time an
  /// update is committed to the invoice.
  final int? version;

  /// The ID of the location that this invoice is associated with.
  ///
  /// If specified in a `CreateInvoice` request, the value must match the
  /// `location_id` of the associated order.
  final String? locationId;

  /// The ID of the order for which the invoice is created. This field is
  /// required when creating an invoice, and the order must be in the `OPEN`
  /// state.
  ///
  /// To view the line items and other information for the associated order,
  /// call the RetrieveOrder endpoint using the order ID.
  final String? orderId;

  /// The customer who receives the invoice. This customer data is displayed
  /// on the invoice and used by Square to deliver the invoice.
  ///
  /// This field is required to publish an invoice, and it must specify the
  /// `customer_id`.
  final InvoiceRecipient? primaryRecipient;

  /// The payment schedule for the invoice, represented by one or more payment
  /// requests that define payment settings, such as amount due and due date.
  /// An invoice supports the following payment request combinations:
  ///
  /// - One balance
  /// - One deposit with one balance
  /// - 2-12 installments
  /// - One deposit with 2-12 installments
  ///
  /// This field is required when creating an invoice. It must contain at
  /// least one payment request. All payment requests for the invoice must
  /// equal the total order amount. For more information, see Configuring
  /// payment requests.
  ///
  /// Adding `INSTALLMENT` payment requests to an invoice requires an
  /// Invoices Plus subscription.
  final List<InvoicePaymentRequest>? paymentRequests;

  /// The delivery method that Square uses to send the invoice, reminders, and
  /// receipts to the customer. After the invoice is published, Square
  /// processes the invoice based on the delivery method and payment request
  /// settings, either immediately or on the `scheduled_at` date, if
  /// specified. For example, Square might send the invoice or receipt for an
  /// automatic payment. For invoices with automatic payments, this field
  /// must be set to `EMAIL`.
  ///
  /// One of the following is required when creating an invoice:
  /// - (Recommended) This `delivery_method` field. To configure an automatic
  /// payment, the `automatic_payment_source` field of the payment request is
  /// also required.
  /// - The deprecated `request_method` field of the payment request. Note
  /// that `invoice` objects returned in responses do not include
  /// `request_method`.
  final InvoiceDeliveryMethod? deliveryMethod;

  /// A user-friendly invoice number that is displayed on the invoice. The
  /// value is unique within a location. If not provided when creating an
  /// invoice, Square assigns a value. It increments from 1 and is padded with
  /// zeros making it 7 characters long (for example, 0000001 and 0000002).
  final String? invoiceNumber;

  /// The title of the invoice, which is displayed on the invoice.
  final String? title;

  /// The description of the invoice, which is displayed on the invoice.
  final String? description;

  /// The timestamp when the invoice is scheduled for processing, in RFC 3339
  /// format. After the invoice is published, Square processes the invoice on
  /// the specified date, according to the delivery method and payment request
  /// settings.
  ///
  /// If the field is not set, Square processes the invoice immediately after
  /// it is published.
  final String? scheduledAt;

  /// **Read only** The URL of the Square-hosted invoice page. After you
  /// publish the invoice using the `PublishInvoice` endpoint, Square hosts
  /// the invoice page and returns the page URL in the response.
  final String? publicUrl;

  /// **Read only** The current amount due for the invoice. In addition to the
  /// amount due on the next payment request, this includes any overdue
  /// payment amounts.
  final Money? nextPaymentAmountMoney;

  /// **Read only** The status of the invoice.
  final InvoiceStatus? status;

  /// **Read only** The time zone used to interpret calendar dates on the
  /// invoice, such as `due_date`. When an invoice is created, this field is
  /// set to the `timezone` specified for the seller location. The value cannot
  /// be changed.
  ///
  /// For example, a payment `due_date` of 2021-03-09 with a `timezone` of
  /// America/Los_Angeles becomes overdue at midnight on March 9 in
  /// America/Los_Angeles
  /// (which equals a UTC timestamp of 2021-03-10T08:00:00Z).
  final String? timezone;

  /// **Read only** The timestamp when the invoice was created, in
  /// RFC 3339 format.
  final String? createdAt;

  /// **Read only** The timestamp when the invoice was last updated, in
  /// RFC 3339 format.
  final String? updatedAt;

  /// The payment methods that customers can use to pay the invoice on the
  /// Square-hosted invoice page. This setting is independent of any automatic
  /// payment requests for the invoice.
  ///
  /// This field is required when creating an invoice and must set at least
  /// one payment method to `true`.
  final InvoiceAcceptedPaymentMethods? acceptedPaymentMethods;

  /// Additional seller-defined fields that are displayed on the invoice. For
  /// more information, see Custom fields.
  ///
  /// Adding custom fields to an invoice requires an Invoices Plus subscription.
  final List<InvoiceCustomField>? customFields;

  /// Read only The ID of the subscription associated with the invoice. This
  /// field is present only on subscription billing invoices.
  final String? subscriptionId;

  /// The date of the sale or the date that the service is rendered, in
  /// `YYYY-MM-DD` format. This field can be used to specify a past or future
  /// date which is displayed on the invoice.
  final String? saleOrServiceDate;

  /// **France only.** The payment terms and conditions that are displayed on
  /// the invoice.
  ///
  /// For countries other than France, Square returns an `INVALID_REQUEST_ERROR`
  /// with a `BAD_REQUEST` code and "Payment conditions are not supported for
  /// this location's country" detail if this field is included in
  /// `CreateInvoice` or `UpdateInvoice` requests.
  final String? paymentConditions;

  /// Indicates whether to allow a customer to save a credit or debit card as
  /// a card on file or a bank transfer as a bank account on file. If `true`,
  /// Square displays a Save my card on file or Save my bank on file checkbox
  /// on the invoice payment page. Stored payment information can be used for
  /// future automatic payments. The default value is `false`.
  final bool? storePaymentMethodEnabled;

  @override
  List<Object?> get props => [
        id,
        version,
        locationId,
        orderId,
        primaryRecipient,
        paymentRequests,
        deliveryMethod,
        invoiceNumber,
        title,
        description,
        scheduledAt,
        publicUrl,
        nextPaymentAmountMoney,
        status,
        timezone,
        createdAt,
        updatedAt,
        acceptedPaymentMethods,
        customFields,
        subscriptionId,
        saleOrServiceDate,
        paymentConditions,
        storePaymentMethodEnabled,
      ];
}
