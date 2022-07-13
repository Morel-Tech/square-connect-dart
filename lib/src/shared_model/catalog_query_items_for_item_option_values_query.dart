import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_items_for_item_option_values_query.g.dart';

@JsonSerializable()
class CatalogQueryItemVariationsForItemOptionValues extends Equatable {
  const CatalogQueryItemVariationsForItemOptionValues({
    this.itemOptionValueIds,
  });

  /// Converts a [Map] to an [CatalogQueryItemVariationsForItemOptionValues]
  factory CatalogQueryItemVariationsForItemOptionValues.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogQueryItemVariationsForItemOptionValuesFromJson(json);

  /// Converts a [CatalogQueryItemVariationsForItemOptionValues] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CatalogQueryItemVariationsForItemOptionValuesToJson(this);

  /// A set of CatalogItemOptionValue IDs to be used to find associated
  /// CatalogItemVariations. All ItemVariations that contain all of the given
  /// Item Option Values (in any order) will be returned.
  final List<String>? itemOptionValueIds;

  @override
  List<Object?> get props => [itemOptionValueIds];
}
