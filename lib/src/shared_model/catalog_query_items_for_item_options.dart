import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_items_for_item_options.g.dart';

@JsonSerializable()
class CatalogQueryItemsForItemOptions extends Equatable {
  const CatalogQueryItemsForItemOptions({
    this.itemOptionIds,
  });

  /// Converts a [Map] to an [CatalogQueryItemsForItemOptions]
  factory CatalogQueryItemsForItemOptions.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogQueryItemsForItemOptionsFromJson(json);

  /// Converts a [CatalogQueryItemsForItemOptions] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CatalogQueryItemsForItemOptionsToJson(this);

  /// A set of CatalogItemOption IDs to be used to find associated
  /// CatalogItems. All Items that contain all of the given Item Options (in
  /// any order) will be returned.
  final List<String>? itemOptionIds;

  @override
  List<Object?> get props => [itemOptionIds];
}
