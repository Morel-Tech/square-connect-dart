/// Indicates a refund's current status.
enum PaymentRefundStatus {
  /// The refund is pending.
  pending,

  /// The refund has been approved by Square.
  approved,

  /// The refund has been rejected by Square.
  rejected,

  /// The refund failed.
  failed,
}