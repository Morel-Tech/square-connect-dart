import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_items_for_tax.g.dart';

@JsonSerializable()
class CatalogQueryItemsForTax extends Equatable {
  const CatalogQueryItemsForTax({
    required this.taxIds,
  });

  /// Converts a [Map] to an [CatalogQueryItemsForTax]
  factory CatalogQueryItemsForTax.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryItemsForTaxFromJson(json);

  /// Converts a [CatalogQueryItemsForTax] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogQueryItemsForTaxToJson(this);

  /// A set of CatalogTax IDs to be used to find associated CatalogItems.
  final List<String> taxIds;

  @override
  List<Object?> get props => [taxIds];
}
