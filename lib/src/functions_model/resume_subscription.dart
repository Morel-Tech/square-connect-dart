import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'resume_subscription.g.dart';

@JsonSerializable()
class ResumeSubscriptionRequest extends Equatable {
  const ResumeSubscriptionRequest({
    this.resumeChangeTiming,
    this.resumeEffectiveDate,
  });

  /// Converts a [Map] to an [ResumeSubscriptionRequest]
  factory ResumeSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$ResumeSubscriptionRequestFromJson(json);

  /// Converts a [ResumeSubscriptionRequest] to a [Map]
  Map<String, dynamic> toJson() => _$ResumeSubscriptionRequestToJson(this);

  /// The `YYYY-MM-DD`-formatted date when the subscription reactivated.
  final String? resumeEffectiveDate;

  /// The timing to resume a subscription, relative to the specified
  /// `resume_effective_date` attribute value.
  final String? resumeChangeTiming;

  @override
  List<Object?> get props => [resumeChangeTiming, resumeEffectiveDate];
}

@JsonSerializable()
class ResumeSubscriptionResponse extends SquareResponse {
  const ResumeSubscriptionResponse({
    this.subscription,
    this.actions,
    super.errors,
  });

  /// Converts a [Map] to an [ResumeSubscriptionResponse]
  factory ResumeSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$ResumeSubscriptionResponseFromJson(json);

  /// Converts a [ResumeSubscriptionResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ResumeSubscriptionResponseToJson(this);

  /// The resumed subscription.
  final Subscription? subscription;

  /// A list of `RESUME` actions created by the request and scheduled for the
  /// subscription.
  final List<SubscriptionAction>? actions;

  @override
  List<Object?> get props => [errors];
}
