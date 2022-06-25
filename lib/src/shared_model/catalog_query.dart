import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/src/shared_model/shared_model.dart';

part 'catalog_query.g.dart';

@JsonSerializable()
class CatalogQuery extends Equatable {
  const CatalogQuery({
    this.sortedAttributeQuery,
    this.exactQuery,
    this.setQuery,
    this.prefixQuery,
    this.rangeQuery,
    this.textQuery,
    this.itemsForTaxQuery,
    this.itemsForModifierListQuery,
    this.itemVariationsForItemOptionValuesQuery,
    this.itemsForItemOptionsQuery,
  });

  /// Converts a [Map] to an [CatalogQuery]
  factory CatalogQuery.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryFromJson(json);

  /// Converts a [CatalogQuery] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogQueryToJson(this);

  /// A query expression to sort returned query result by the given attribute.
  final CatalogQuerySortedAttribute? sortedAttributeQuery;

  /// An exact query expression to return objects with attribute name and value
  /// matching the specified attribute name and value exactly. Value matching
  /// is case insensitive.
  final CatalogQueryExact? exactQuery;

  /// A set query expression to return objects with attribute name and value
  /// matching the specified attribute name and any of the specified attribute
  /// values exactly. Value matching is case insensitive.
  final CatalogQuerySet? setQuery;

  /// A prefix query expression to return objects with attribute values that
  /// have a prefix matching the specified string value. Value matching is case
  /// insensitive.
  final CatalogQueryPrefix? prefixQuery;

  /// A range query expression to return objects with numeric values that lie
  /// in the specified range.
  final CatalogQueryRange? rangeQuery;

  /// A text query expression to return objects whose searchable attributes
  /// contain all of the given keywords, irrespective of their order. For
  /// example, if a CatalogItem contains custom attribute values of {"name":
  /// "t-shirt"} and {"description": "Small, Purple"}, the query filter of
  /// {"keywords": ["shirt", "sma", "purp"]} returns this item.
  final CatalogQueryText? textQuery;

  /// A query expression to return items that have any of the specified taxes
  /// (as identified by the corresponding CatalogTax object IDs) enabled.
  final CatalogQueryItemsForTax? itemsForTaxQuery;

  /// A query expression to return items that have any of the given modifier
  /// list (as identified by the corresponding CatalogModifierLists IDs)
  /// enabled.
  final CatalogQueryItemsForModifierList? itemsForModifierListQuery;

  /// A query expression to return items that contains the specified item
  /// options (as identified the corresponding CatalogItemOption IDs).
  final CatalogQueryItemsForItemOptions? itemsForItemOptionsQuery;

  /// A query expression to return item variations (of the CatalogItemVariation
  /// type) that contain all of the specified CatalogItemOption IDs.
  final CatalogQueryItemVariationsForItemOptionValues?
      itemVariationsForItemOptionValuesQuery;

  @override
  List<Object?> get props => [
        sortedAttributeQuery,
        exactQuery,
        setQuery,
        prefixQuery,
        rangeQuery,
        textQuery,
        itemsForTaxQuery,
        itemsForModifierListQuery,
        itemsForItemOptionsQuery,
        itemVariationsForItemOptionValuesQuery,
      ];
}
