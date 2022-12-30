import 'package:json_annotation/json_annotation.dart';

enum SubscriptionStatus {
  /// The subscription is pending to start in the future.
  @JsonValue('PENDING')
  pending,

  /// The subscription is active.
  @JsonValue('ACTIVE')
  active,

  /// The subscription is canceled.
  @JsonValue('CANCELED')
  canceled,

  /// The subscription is deactivated.
  @JsonValue('DEACTIVATED')
  deactivated,

  /// The subscription is paused.
  @JsonValue('PAUSED')
  paused,
}
