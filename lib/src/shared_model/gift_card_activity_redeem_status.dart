import 'package:json_annotation/json_annotation.dart';

enum GiftCardActivityRedeemStatus {
  /// The gift card redemption is pending. PENDING is a temporary status that
  /// applies when a gift card is redeemed from Square Point of Sale or another
  /// Square product. A PENDING status is updated to COMPLETED if the payment is
  /// captured or CANCELED if the authorization is voided.
  @JsonValue('PENDING')
  pending,

  /// The gift card redemption is completed.
  @JsonValue('COMPLETED')
  completed,

  /// The gift card redemption is canceled. A redemption is canceled if the
  /// authorization on the gift card is voided.
  @JsonValue('CANCELED')
  canceled,
}
