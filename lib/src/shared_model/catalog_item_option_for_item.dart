import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_item_option_for_item.g.dart';

@JsonSerializable()
class CatalogItemOptionForItem extends Equatable {
  const CatalogItemOptionForItem({
    required this.itemOptionId,
  });

  /// Converts a [Map] to an [CatalogItemOptionForItem]
  factory CatalogItemOptionForItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemOptionForItemFromJson(json);

  /// Converts a [CatalogItemOptionForItem] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogItemOptionForItemToJson(this);

  final String itemOptionId;

  @override
  List<Object?> get props => [itemOptionId];
}
