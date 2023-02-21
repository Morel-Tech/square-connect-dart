import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_item_option_value.g.dart';

@JsonSerializable()
class CatalogItemOptionValue extends Equatable {
  const CatalogItemOptionValue({
    this.color,
    this.description,
    this.itemOptionId,
    this.name,
    this.ordinal,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CatalogItemOptionValue]
  factory CatalogItemOptionValue.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemOptionValueFromJson(json);

  /// Converts a [CatalogItemOptionValue] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CatalogItemOptionValueToJson(this);

  /// The HTML-supported hex color for the item option (e.g., "#ff8d4e85").
  /// Only displayed if `show_colors` is enabled on the parent `ItemOption`.
  /// When left unset, `color` defaults to white ("#ffffff") when
  /// `show_colors` is enabled on the parent `ItemOption`.
  final String? color;

  /// A human-readable description for the option value. This is a searchable
  /// attribute for use in applicable query filters.
  final String? description;

  /// Unique ID of the associated item option.
  final String? itemOptionId;

  /// Name of this item option value. This is a searchable attribute for use
  /// in applicable query filters.
  final String? name;

  /// Determines where this option value appears in a list of option values.
  final int? ordinal;

  @override
  List<Object?> get props => [
        color,
        description,
        itemOptionId,
        name,
        ordinal,
      ];
}
