import 'package:json_annotation/json_annotation.dart';

enum GiftCardStatus {
  /// The gift card is active and can be used as a payment source.
  @JsonValue('ACTIVE')
  active,

  /// Any activity that changes the gift card balance is permanently forbidden.
  @JsonValue('DEACTIVATED')
  deactivated,

  /// Any activity that changes the gift card balance is temporarily forbidden.
  @JsonValue('BLOCKED')
  blocked,

  /// The gift card is pending activation. This is the initial state when a
  @JsonValue('PENDING')

  /// gift card is created. You must activate the gift card before it can
  /// be used.
  pending,
}
