import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'swap_plan.g.dart';

@JsonSerializable()
class SwapPlanRequest extends Equatable {
  const SwapPlanRequest({
    required this.newPlanId,
  });

  /// Converts a [Map] to an [SwapPlanRequest]
  factory SwapPlanRequest.fromJson(Map<String, dynamic> json) =>
      _$SwapPlanRequestFromJson(json);

  /// Converts a [SwapPlanRequest] to a [Map]
  Map<String, dynamic> toJson() => _$SwapPlanRequestToJson(this);

  /// The ID of the new subscription plan.
  final String newPlanId;

  @override
  List<Object?> get props => [newPlanId];
}

@JsonSerializable()
class SwapPlanResponse extends SquareResponse {
  const SwapPlanResponse({
    this.subscription,
    this.actions,
    super.errors,
  });

  /// Converts a [Map] to an [SwapPlanResponse]
  factory SwapPlanResponse.fromJson(Map<String, dynamic> json) =>
      _$SwapPlanResponseFromJson(json);

  /// Converts a [SwapPlanResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SwapPlanResponseToJson(this);

  /// The subscription with the updated subscription plan.
  final Subscription? subscription;

  /// A list of a `SWAP_PLAN` action created by the request.
  final List<SubscriptionAction>? actions;

  @override
  List<Object?> get props => [
        errors,
        subscription,
        actions,
      ];
}
