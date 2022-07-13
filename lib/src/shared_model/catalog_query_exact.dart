import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_exact.g.dart';

@JsonSerializable()
class CatalogQueryExact extends Equatable {
  const CatalogQueryExact({
    required this.attributeName,
    required this.attributeValue,
  });

  /// Converts a [Map] to an [CatalogQueryExact]
  factory CatalogQueryExact.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryExactFromJson(json);

  /// Converts a [CatalogQueryExact] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogQueryExactToJson(this);

  /// The name of the attribute to be searched. Matching of the attribute name 
  /// is exact.
  final String attributeName;

  /// The desired value of the search attribute. Matching of the attribute
  /// value is case insensitive and can be partial. For example, if a specified
  /// value of "sma", objects with the named attribute value of "Small", "small"
  /// are both matched.
  final String attributeValue;

  @override
  List<Object> get props => [
        attributeName,
        attributeValue,
      ];
}
