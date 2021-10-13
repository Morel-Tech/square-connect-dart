import 'package:json_annotation/json_annotation.dart';

/// Indicates state of the order.
enum OrderState {
  /// Indicates the order is open. Open orders may be updated.
  @JsonValue('OPEN')
  open,

  /// Indicates the order is completed. Completed orders are fully paid. This
  /// is a terminal state.
  @JsonValue('COMPLETED')
  completed,

  /// Indicates the order is canceled. Canceled orders are not paid. This is a
  /// terminal state.
  @JsonValue('CANCELED')
  canceled,

  /// Indicates that the order is in a draft state. Draft orders can be updated,
  /// but cannot be paid or fulfilled.
  @JsonValue('DRAFT')
  draft,
}
