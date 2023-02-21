import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_item_option.g.dart';

@JsonSerializable()
class CatalogItemOption extends Equatable {
  const CatalogItemOption({
    this.description,
    this.displayName,
    this.name,
    this.showColors,
    this.values,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CatalogItemOption]
  factory CatalogItemOption.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemOptionFromJson(json);

  /// Converts a [CatalogItemOption] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CatalogItemOptionToJson(this);

  /// The item option's human-readable description. Displayed in the Square
  /// Point of Sale app for the seller and in the Online Store or on receipts
  /// for the buyer. This is a searchable attribute for use in applicable
  /// query filters.
  final String? description;

  /// The item option's display name for the customer. This is a searchable
  /// attribute for use in applicable query filters.
  final String? displayName;

  /// The item option's display name for the seller. Must be unique across all
  /// item options. This is a searchable attribute for use in applicable query
  /// filters.
  final String? name;

  /// If true, display colors for entries in `values` when present.
  final bool? showColors;

  /// A list of CatalogObjects containing the `CatalogItemOptionValues` for
  /// this item.
  final List<CatalogObject>? values;

  @override
  List<Object?> get props => [
        description,
        displayName,
        name,
        showColors,
        values,
      ];
}
