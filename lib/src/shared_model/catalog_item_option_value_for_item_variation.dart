import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_item_option_value_for_item_variation.g.dart';

@JsonSerializable()
class CatalogItemOptionValueForItemVariation extends Equatable {
  const CatalogItemOptionValueForItemVariation({
    required this.itemOptionId,
    required this.itemOptionValueId,
  });

  /// Converts a [Map] to an [CatalogItemOptionValueForItemVariation]
  factory CatalogItemOptionValueForItemVariation.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogItemOptionValueForItemVariationFromJson(json);

  /// Converts a [CatalogItemOptionValueForItemVariation] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CatalogItemOptionValueForItemVariationToJson(this);

  final String itemOptionId;
  final String itemOptionValueId;

  @override
  List<Object?> get props => [itemOptionId, itemOptionValueId];
}
