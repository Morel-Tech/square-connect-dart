import 'package:json_annotation/json_annotation.dart';

enum SubscriptionActionType {
  /// The action to execute a scheduled cancellation of a subscription.
  @JsonValue('CANCEL')
  cancel,

  /// The action to execute a scheduled pause of a subscription.
  @JsonValue('PAUSE')
  pause,

  /// The action to execute a scheduled resumption of a subscription.
  @JsonValue('RESUME')
  resume,

  /// The action to execute a scheduled swap of a subscription plan in a
  /// subscription.
  @JsonValue('SWAP_PLAN')
  swapPlan,
}
