import 'package:json_annotation/json_annotation.dart';

/// Indicates whether Square should alert when the inventory quantity of a
/// CatalogItemVariation is low.
enum InventoryAlertType {
  /// The variation does not display an alert.
  @JsonValue('NONE')
  none,

  /// The variation does display an alert when the quantity is low.
  @JsonValue('LOW_QUANTITY')
  lowQuantity,
}
