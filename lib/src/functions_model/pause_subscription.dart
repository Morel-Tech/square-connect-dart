import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'pause_subscription.g.dart';

@JsonSerializable()
class PauseSubscriptionRequest extends Equatable {
  const PauseSubscriptionRequest({
    this.pauseEffectiveDate,
    this.pauseCycleDuration,
    this.pauseReason,
    this.resumeChangeTiming,
    this.resumeEffectiveDate,
  });

  /// Converts a [Map] to an [PauseSubscriptionRequest]
  factory PauseSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$PauseSubscriptionRequestFromJson(json);

  /// Converts a [PauseSubscriptionRequest] to a [Map]
  Map<String, dynamic> toJson() => _$PauseSubscriptionRequestToJson(this);

  /// The `YYYY-MM-DD`-formatted date when the scheduled PAUSE action takes
  /// place on the subscription.
  ///
  /// When this date is unspecified or falls within the current billing cycle,
  /// the subscription is paused on the starting date of the next billing cycle.
  final String? pauseEffectiveDate;

  /// The number of billing cycles the subscription will be paused before it
  /// is reactivated.
  ///
  /// When this is set, a `RESUME` action is also scheduled to take place on
  /// the subscription at the end of the specified pause cycle duration. In
  /// this case, neither `resume_effective_date` nor `resume_change_timing
  /// be specified.
  final int? pauseCycleDuration;

  /// The date when the subscription is reactivated by a scheduled RESUME
  /// action. This date must be at least one billing cycle ahead of
  /// `pause_effective_date`.
  final String? resumeEffectiveDate;

  /// The timing whether the subscription is reactivated immediately or at the
  /// end of the billing cycle, relative to `resume_effective_date`.
  final ChangeTiming? resumeChangeTiming;

  /// The user-provided reason to pause the subscription.
  final String? pauseReason;

  @override
  List<Object?> get props => [
        pauseEffectiveDate,
        pauseCycleDuration,
        resumeEffectiveDate,
        resumeChangeTiming,
        pauseReason,
      ];
}

@JsonSerializable()
class PauseSubscriptionResponse extends SquareResponse {
  const PauseSubscriptionResponse({
    this.actions,
    this.subscription,
    super.errors,
  });

  /// Converts a [Map] to an [PauseSubscriptionResponse]
  factory PauseSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$PauseSubscriptionResponseFromJson(json);

  /// Converts a [PauseSubscriptionResponse] to a [Map]
  Map<String, dynamic> toJson() => _$PauseSubscriptionResponseToJson(this);

  /// The subscription to be paused by the scheduled `PAUSE` action.
  final Subscription? subscription;

  /// The list of a `PAUSE` action and a possible `RESUME` action created by
  /// the request.
  final List<SubscriptionAction>? actions;

  @override
  List<Object?> get props => [
        errors,
        subscription,
        actions,
      ];
}
