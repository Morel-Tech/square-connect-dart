import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_prefix.g.dart';

@JsonSerializable()
class CatalogQueryPrefix extends Equatable {
  const CatalogQueryPrefix({
    required this.attributeName,
    required this.attributePrefix,
  });

  /// Converts a [Map] to an [CatalogQueryPrefix]
  factory CatalogQueryPrefix.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryPrefixFromJson(json);

  /// Converts a [CatalogQueryPrefix] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogQueryPrefixToJson(this);

  /// The name of the attribute to be searched.
  final String attributeName;

  /// The desired prefix of the search attribute value.
  final String attributePrefix;

  @override
  List<Object?> get props => [
        attributeName,
        attributePrefix,
      ];
}
