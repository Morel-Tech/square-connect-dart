import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_subscription.g.dart';

@JsonSerializable()
class CreateSubscriptionRequest extends Equatable {
  const CreateSubscriptionRequest({
    required this.locationId,
    required this.planId,
    required this.customerId,
    this.idempotencyKey,
    this.startDate,
    this.canceledDate,
    this.taxPercentage,
    this.priceOverrideMoney,
    this.cardId,
    this.timezone,
    this.source,
  });

  /// Converts a [Map] to an [CreateSubscriptionRequest]
  factory CreateSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionRequestFromJson(json);

  /// Converts a [CreateSubscriptionRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateSubscriptionRequestToJson(this);

  /// A unique string that identifies this `CreateSubscription` request. If you
  /// do not provide a unique string (or provide an empty string as the value),
  /// the endpoint treats each request as independent.
  final String? idempotencyKey;

  /// The ID of the location the subscription is associated with.
  final String locationId;

  /// The ID of the subscription plan created using the Catalog API.
  final String planId;

  /// The ID of the customer subscribing to the subscription plan.
  final String customerId;

  /// The `YYYY-MM-DD`-formatted date to start the subscription. If it is
  /// unspecified, the subscription starts immediately.
  final String? startDate;

  /// The `YYYY-MM-DD`-formatted date when the newly created subscription is
  /// scheduled for cancellation.
  ///
  /// This date overrides the cancellation date set in the plan configuration.
  /// If the cancellation date is earlier than the end date of a subscription
  /// cycle, the subscription stops at the canceled date and the subscriber is
  /// sent a prorated invoice at the beginning of the canceled cycle.
  ///
  /// When the subscription plan of the newly created subscription has a fixed
  /// number of cycles and the `canceled_date` occurs before the subscription
  /// plan expires, the specified `canceled_date` sets the date when the
  /// subscription stops through the end of the last cycle.
  final String? canceledDate;

  /// The tax to add when billing the subscription. The percentage is expressed
  /// in decimal form, using a `'.'` as the decimal separator and without a
  /// `'%'` sign. For example, a value of 7.5 corresponds to 7.5%.
  final String? taxPercentage;

  /// A custom price to apply for the subscription. If specified, it overrides
  /// the price configured by the subscription plan.
  final Money? priceOverrideMoney;

  /// The ID of the subscriber's card to charge. If it is not specified, the
  /// subscriber receives an invoice via email.
  final String? cardId;

  /// The timezone that is used in date calculations for the subscription. If
  /// unset, defaults to the location timezone. If a timezone is not configured
  /// for the location, defaults to "America/New_York". Format: the IANA
  /// Timezone Database identifier for the location timezone.
  final String? timezone;

  /// The origination details of the subscription.
  final SubscriptionSource? source;

  @override
  List<Object?> get props => [
        idempotencyKey,
        locationId,
        planId,
        customerId,
        startDate,
        canceledDate,
        taxPercentage,
        priceOverrideMoney,
        cardId,
        timezone,
        source,
      ];
}

@JsonSerializable()
class CreateSubscriptionResponse extends SquareResponse {
  const CreateSubscriptionResponse({this.subscription, super.errors});

  /// Converts a [Map] to an [CreateSubscriptionResponse]
  factory CreateSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionResponseFromJson(json);

  /// Converts a [CreateSubscriptionResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateSubscriptionResponseToJson(this);

  /// The newly created subscription.
  final Subscription? subscription;

  @override
  List<Object?> get props => [
        errors,
        subscription,
      ];
}
