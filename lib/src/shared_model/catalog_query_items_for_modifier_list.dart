import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_items_for_modifier_list.g.dart';

@JsonSerializable()
class CatalogQueryItemsForModifierList extends Equatable {
  const CatalogQueryItemsForModifierList({
    required this.modifierListIds,
  });

  /// Converts a [Map] to an [CatalogQueryItemsForModifierList]
  factory CatalogQueryItemsForModifierList.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogQueryItemsForModifierListFromJson(json);

  /// Converts a [CatalogQueryItemsForModifierList] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CatalogQueryItemsForModifierListToJson(this);

  /// A set of CatalogModifierList IDs to be used to find associated
  /// CatalogItems.
  final List<String> modifierListIds;

  @override
  List<Object> get props => [modifierListIds];
}
