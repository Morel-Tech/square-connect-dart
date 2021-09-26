import 'package:json_annotation/json_annotation.dart';

/// Indicates whether a CatalogModifierList supports multiple selections.
enum CatalogModifierListSelectionType {
  /// Indicates that a CatalogModifierList allows only a single CatalogModifier
  /// to be selected.
  @JsonValue('SINGLE')
  single,

  /// Indicates that a CatalogModifierList allows multiple CatalogModifier
  /// to be selected.
  @JsonValue('MULTIPLE')
  multiple,
}
