import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'subscription_action.g.dart';

@JsonSerializable()
class SubscriptionAction extends Equatable {
  const SubscriptionAction({
    required this.id,
    required this.type,
    this.effectiveDate,
    this.newPlanId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SubscriptionAction]
  factory SubscriptionAction.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionActionFromJson(json);

  /// Converts a [SubscriptionAction] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SubscriptionActionToJson(this);

  /// The ID of an action scoped to a subscription.
  final String id;

  /// The type of the action.
  final SubscriptionActionType type;

  /// The `YYYY-MM-DD`-formatted date when the action occurs on the
  /// subscription.
  final String? effectiveDate;

  /// The target subscription plan a subscription switches to, for a
  /// `SWAP_PLAN` action.
  final String? newPlanId;

  @override
  List<Object?> get props => [
        id,
        type,
        effectiveDate,
        newPlanId,
      ];
}
