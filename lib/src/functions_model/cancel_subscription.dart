import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'cancel_subscription.g.dart';

@JsonSerializable()
class CancelSubscriptionResponse extends SquareResponse {
  const CancelSubscriptionResponse({
    this.subscription,
    this.actions,
    super.errors,
  });

  /// Converts a [Map] to an [CancelSubscriptionResponse]
  factory CancelSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelSubscriptionResponseFromJson(json);

  /// Converts a [CancelSubscriptionResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CancelSubscriptionResponseToJson(this);

  final Subscription? subscription;
  final List<SubscriptionAction>? actions;

  @override
  List<Object?> get props => [subscription, actions, errors];
}
