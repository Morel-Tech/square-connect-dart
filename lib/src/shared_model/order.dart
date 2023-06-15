import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order.g.dart';

@JsonSerializable()
class Order extends Equatable {
  const Order({
    this.id,
    this.locationId,
    this.referenceId,
    this.source,
    this.customerId,
    this.lineItems,
    this.taxes,
    this.discounts,
    this.serviceCharges,
    this.fulfillments,
    this.returnAmounts,
    this.netAmounts,
    this.roundingAdjustment,
    this.createdAt,
    this.updatedAt,
    this.closedAt,
    this.state,
    this.totalMoney,
    this.totalTaxMoney,
    this.totalDiscountMoney,
    this.totalServiceChargeMoney,
    this.tenders,
    this.refunds,
    this.returns,
    this.version,
    this.metadata,
    this.netAmountDueMoney,
    this.pricingOptions,
    this.rewards,
    this.ticketName,
  });

  /// Converts a [Map] to an [Order]
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  /// Converts a [Order] to a [Map]
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  /// **Read only** The order's unique ID.
  final String? id;

  /// The ID of the seller location that this order is associated with.
  final String? locationId;

  /// A client-specified ID to associate an entity in another system with
  /// this order.
  final String? referenceId;

  /// The origination details of the order.
  final OrderSource? source;

  /// The ID of the customer associated with the order.
  ///
  /// You should specify a `customer_id` on the order (or the payment) to
  /// ensure that transactions are reliably linked to customers. Omitting this
  /// field might result in the creation of new instant profiles.
  final String? customerId;

  /// The line items included in the order.
  final List<OrderLineItem>? lineItems;

  /// The list of all taxes associated with the order.
  ///
  /// Taxes can be scoped to either `ORDER` or `LINE_ITEM`. For taxes with
  /// `LINE_ITEM` scope, an `OrderLineItemAppliedTax` must be added to each
  /// line item that the tax applies to. For taxes with `ORDER` scope, the
  /// server generates an `OrderLineItemAppliedTax` for every line item.
  ///
  /// On reads, each tax in the list includes the total amount of that tax
  /// applied to the order.
  ///
  /// **IMPORTANT**: If `LINE_ITEM` scope is set on any taxes in this field,
  /// using the deprecated `line_items.taxes` field results in an error. Use
  /// `line_items.applied_taxes` instead.
  final List<OrderLineItemTax>? taxes;

  /// The list of all discounts associated with the order.
  ///
  /// Discounts can be scoped to either `ORDER` or `LINE_ITEM`. For discounts
  /// scoped to `LINE_ITEM`, an `OrderLineItemAppliedDiscount` must be added to
  /// each line item that the discount applies to. For discounts with `ORDER`
  /// scope, the server generates an `OrderLineItemAppliedDiscount` for every
  /// line item.

  /// **IMPORTANT**: If `LINE_ITEM` scope is set on any discounts in this
  /// field, using the deprecated `line_items.discounts` field results in an
  /// error. Use `line_items.applied_discounts` instead.
  final List<OrderLineItemDiscount>? discounts;

  /// A list of service charges applied to the order.
  final List<OrderServiceCharge>? serviceCharges;

  /// Details about order fulfillment.
  ///
  /// Orders can only be created with at most one fulfillment. However, orders
  /// returned by the API might contain multiple fulfillments.
  final List<OrderFulfillment>? fulfillments;

  /// **Read only** A collection of items from sale orders being returned in
  /// this one. Normally part of an itemized return or exchange. There is
  /// exactly one Return object per sale Order being referenced.
  final List<OrderReturn>? returns;

  /// **Read only** The rollup of the returned money amounts.
  final OrderMoneyAmounts? returnAmounts;

  /// **Read only** The net money amounts (sale money - return money).
  final OrderMoneyAmounts? netAmounts;

  /// **Read only** A positive rounding adjustment to the total of the order.
  /// This adjustment is commonly used to apply cash rounding when the minimum
  /// unit of account is smaller than the lowest physical denomination of the
  /// currency.
  final OrderRoundingAdjustment? roundingAdjustment;

  /// **Read only** The tenders that were used to pay for the order.
  final List<Tender>? tenders;

  /// **Read only** The refunds that are part of this order.
  final List<Refund>? refunds;

  /// Application-defined data attached to this order. Metadata fields are
  /// intended to store descriptive references or associations with an entity
  /// in another system or store brief information about the object. Square
  /// does not process this field; it only stores and returns it in relevant
  /// API calls. Do not use metadata to store any sensitive information (such
  /// as personally identifiable information or card details).
  ///
  /// Keys written by applications must be 60 characters or less and must be in
  /// the character set [`a-zA-Z0-9_-`]. Entries can also include metadata
  /// generated by Square. These keys are prefixed with a namespace, separated
  /// from the key with a ':' character.
  ///
  /// Values have a maximum length of 255 characters.
  ///
  /// An application can have up to 10 entries per metadata field.
  ///
  /// Entries written by applications are private and can only be read or
  /// modified by the same application.
  final Map<String, String>? metadata;

  /// **Read only** The timestamp for when the order was created, in RFC 3339
  /// format (for example, "2016-09-04T23:59:33.123Z").
  ///
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  ///
  /// UTC: 2020-01-26T02:25:34Z
  ///
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final DateTime? createdAt;

  /// **Read only** The timestamp for when the order was last updated, in RFC
  /// 3339 format (for example, "2016-09-04T23:59:33.123Z").
  ///
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  ///
  /// UTC: 2020-01-26T02:25:34Z
  ///
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final DateTime? updatedAt;

  /// **Read only** The timestamp for when the order reached a terminal state,
  /// in RFC 3339 format (for example "2016-09-04T23:59:33.123Z").
  ///
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  ///
  /// UTC: 2020-01-26T02:25:34Z
  ///
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final DateTime? closedAt;

  /// The current state of the order.
  final OrderState? state;

  /// **Read only** The total amount of money to collect for the order.
  final Money? totalMoney;

  /// **Read only** The total amount of tax money to collect for the order.
  final Money? totalTaxMoney;

  /// **Read only** The total amount of discount money to collect for the order.
  final Money? totalDiscountMoney;

  /// **Read only** The total amount of money collected in service charges for
  /// the order.
  ///
  /// Note: total_service_charge_money is the sum of applied_money fields for
  /// each individual service charge. Therefore, total_service_charge_money
  /// only includes inclusive tax amounts, not additive tax amounts.
  final Money? totalServiceChargeMoney;

  /// The version number, which is incremented each time an update is committed
  /// to the order. Orders not created through the API do not include a version
  /// number and therefore cannot be updated.
  final int? version;

  /// A short-term identifier for the order (such as a customer first name,
  /// table number, or auto-generated order number that resets daily).
  final String? ticketName;

  /// Pricing options for an order. The options affect how the order's price is
  /// calculated. They can be used, for example, to apply automatic price
  /// adjustments that are based on preconfigured pricing rules.
  final OrderPricingOptions? pricingOptions;

  /// **Read only** A set-like list of Rewards that have been added to the
  /// Order.
  final List<OrderReward>? rewards;

  /// **Read only** The net amount of money due on the order.
  final Money? netAmountDueMoney;

  @override
  List<Object?> get props {
    return [
      id,
      locationId,
      referenceId,
      source,
      customerId,
      lineItems,
      taxes,
      discounts,
      serviceCharges,
      fulfillments,
      returns,
      returnAmounts,
      netAmounts,
      roundingAdjustment,
      tenders,
      refunds,
      createdAt,
      updatedAt,
      closedAt,
      state,
      totalMoney,
      totalTaxMoney,
      totalDiscountMoney,
      totalServiceChargeMoney,
      version,
      rewards,
      metadata,
      ticketName,
      pricingOptions,
      netAmountDueMoney,
    ];
  }
}
