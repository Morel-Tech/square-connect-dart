import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_set.g.dart';

@JsonSerializable()
class CatalogQuerySet extends Equatable {
  const CatalogQuerySet({
    required this.attributeName,
    required this.attributeValues,
  });

  /// Converts a [Map] to an [CatalogQuerySet]
  factory CatalogQuerySet.fromJson(Map<String, dynamic> json) =>
      _$CatalogQuerySetFromJson(json);

  /// Converts a [CatalogQuerySet] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogQuerySetToJson(this);

  /// The name of the attribute to be searched. Matching of the attribute name
  /// is exact.
  final String attributeName;

  /// The desired values of the search attribute. Matching of the attribute
  /// values is exact and case insensitive. A maximum of 250 values may be
  /// searched in a request.
  final String attributeValues;

  @override
  List<Object> get props => [
        attributeName,
        attributeValues,
      ];
}
