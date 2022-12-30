import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'subscription.g.dart';

@JsonSerializable()
class Subscription extends Equatable {
  const Subscription({
    required this.id,
    this.locationId,
    this.planId,
    this.customerId,
    this.startDate,
    this.canceledDate,
    this.chargedThroughDate,
    this.status,
    this.taxPercentage,
    this.invoiceIds,
    this.priceOverrideMoney,
    required this.version,
    this.createdAt,
    this.cardId,
    this.timezone,
    this.source,
    this.actions,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [Subscription]
  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  /// Converts a [Subscription] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);

  /// **Read only** The Square-assigned ID of the subscription.
  final String id;

  /// **Read only** The ID of the location associated with the subscription.
  final String? locationId;

  /// **Read only** The ID of the subscribed-to subscription plan.
  final String? planId;

  /// **Read only** The ID of the subscribing customer profile.
  final String? customerId;

  /// Read only The `YYYY-MM-DD`-formatted date (for example, 2013-01-15) to
  /// start the subscription.
  final String? startDate;

  /// The `YYYY-MM-DD`-formatted date (for example, 2013-01-15) to cancel the
  /// subscription, when the subscription status changes to `CANCELED` and the
  /// subscription billing stops.
  ///
  /// If this field is not set, the subscription ends according its subscription
  /// plan.
  ///
  /// This field cannot be updated, other than being cleared.
  final String? canceledDate;

  /// **Read only** The `YYYY-MM-DD`-formatted date up to when the subscriber is
  /// invoiced for the subscription.
  ///
  /// After the invoice is sent for a given billing period, this date will be
  /// the last day of the billing period. For example, suppose for the month of
  /// May a subscriber gets an invoice (or charged the card) on May 1. For the
  /// monthly billing scenario, this date is then set to May 31.
  final String? chargedThroughDate;

  /// **Read only** The current status of the subscription.
  final SubscriptionStatus? status;

  /// The tax amount applied when billing the subscription. The percentage is
  /// expressed in decimal form, using a `'.'` as the decimal separator and
  ///  without a `'%'` sign. For example, a value of 7.5 corresponds to 7.5%.
  final String? taxPercentage;

  /// **Read only** The IDs of the invoices created for the subscription,
  /// listed in order when the invoices were created (newest invoices appear
  /// first).
  final List<String>? invoiceIds;

  /// A custom price to apply for the subscription. If specified, it overrides
  /// the price configured by the subscription plan
  final Money? priceOverrideMoney;

  /// The version of the object. When updating an object, the version
  /// supplied must match the version in the database, otherwise the write
  /// will be rejected as conflicting.
  final int version;

  /// **Read only** The timestamp when the subscription was created.
  final DateTime? createdAt;

  /// The ID of the subscriber's card used to charge for the subscription.
  final String? cardId;

  /// **Read only** Timezone that will be used in date calculations for the
  /// subscription. Defaults to the timezone of the location based on
  /// `location_id`. Format: the IANA Timezone Database identifier for the
  /// location timezone (for example, `America/Los_Angeles`).
  final String? timezone;

  /// The origination details of the subscription.
  final SubscriptionSource? source;

  /// The list of scheduled actions on this subscription. It is set only in
  /// the response from `RetrieveSubscription` with the query parameter of
  /// `include=actions` or from `SearchSubscriptions` with the input parameter
  /// of `include:["actions"]`.
  final List<SubscriptionAction>? actions;

  @override
  List<Object?> get props => [
        id,
        locationId,
        planId,
        customerId,
        startDate,
        canceledDate,
        chargedThroughDate,
        status,
        taxPercentage,
        invoiceIds,
        priceOverrideMoney,
        version,
        createdAt,
        cardId,
        timezone,
        source,
        actions,
      ];
}
