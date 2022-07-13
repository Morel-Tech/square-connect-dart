import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_range.g.dart';

@JsonSerializable()
class CatalogQueryRange extends Equatable {
  const CatalogQueryRange({
    required this.attributeName,
    this.attributeMaxValue,
    this.attributeMinValue,
  });

  /// Converts a [Map] to an [CatalogQueryRange]
  factory CatalogQueryRange.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryRangeFromJson(json);

  /// Converts a [CatalogQueryRange] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogQueryRangeToJson(this);

  /// The name of the attribute to be searched.
  final String attributeName;

  /// The desired maximum value for the search attribute (inclusive).
  final int? attributeMaxValue;

  /// The desired minimum value for the search attribute (inclusive).
  final int? attributeMinValue;

  @override
  List<Object?> get props => [
        attributeName,
        attributeMaxValue,
        attributeMinValue,
      ];
}
