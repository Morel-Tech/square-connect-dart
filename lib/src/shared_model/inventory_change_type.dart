import 'package:json_annotation/json_annotation.dart';

/// Indicates how the inventory change was applied to a tracked quantity of
/// items.
enum InventoryChangeType {
  /// The change occurred as part of a physical count update.
  @JsonValue('PHYSICAL_COUNT')
  physicalCount,

  ///  The change occurred as part of the normal lifecycle of goods (e.g., as
  /// an inventory adjustment).
  @JsonValue('ADJUSTMENT')
  adjustment,

  /// The change occurred as part of an inventory transfer.
  @JsonValue('TRANSFER')
  transfer,
}
