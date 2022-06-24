import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_sorted_attribute.g.dart';

@JsonSerializable()
class CatalogQuerySortedAttribute extends Equatable {
  const CatalogQuerySortedAttribute({
    required this.attributeName,
    this.initialAttributeValue,
    this.sortOrder,
  });

  /// Converts a [Map] to an [CatalogQuerySortedAttribute]
  factory CatalogQuerySortedAttribute.fromJson(Map<String, dynamic> json) =>
      _$CatalogQuerySortedAttributeFromJson(json);

  /// Converts a [CatalogQuerySortedAttribute] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogQuerySortedAttributeToJson(this);

  /// The attribute whose value is used as the sort key.
  final String attributeName;

  /// The first attribute value to be returned by the query. Ascending sorts
  /// will return only objects with this value or greater, while descending
  /// sorts will return only objects with this value or less. If unset, start
  /// at the beginning (for ascending sorts) or end (for descending sorts).
  final String? initialAttributeValue;

  /// The desired sort order, "ASC" (ascending) or "DESC" (descending).
  final String? sortOrder;

  @override
  List<Object?> get props => [
        attributeName,
        initialAttributeValue,
        sortOrder,
      ];
}
