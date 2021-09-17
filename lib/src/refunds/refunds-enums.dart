import 'package:json_annotation/json_annotation.dart';

/// Indicates a refund's current status.
enum PaymentRefundStatus {
  /// The refund is pending.
  @JsonValue('PENDING')
  pending,

  /// The refund has been approved by Square.
  @JsonValue('APPROVED')
  approved,

  /// The refund has been rejected by Square.
  @JsonValue('REJECTED')
  rejected,

  /// The refund failed.
  @JsonValue('FAILED')
  failed,
}
