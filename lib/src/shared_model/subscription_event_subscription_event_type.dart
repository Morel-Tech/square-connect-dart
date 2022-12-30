import 'package:json_annotation/json_annotation.dart';

enum SubscriptionEventSubscriptionEventType {
  /// The subscription was started.
  @JsonValue('START_SUBSCRIPTION')
  startSubscription,

  /// The subscription plan was changed.
  @JsonValue('PLAN_CHANGE')
  planChange,

  /// The subscription was stopped.
  @JsonValue('STOP_SUBSCRIPTION')
  stopSubscription,

  /// The subscription was deactivated.
  @JsonValue('DEACTIVATE_SUBSCRIPTION')
  deactivateSubscription,

  /// The subscription was resumed.
  @JsonValue('RESUME_SUBSCRIPTION')
  resumeSubscription,

  /// The subscription was paused.
  @JsonValue('PAUSE_SUBSCRIPTION')
  pauseSubscription,
}
