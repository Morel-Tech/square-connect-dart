import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_query_text.g.dart';

@JsonSerializable()
class CatalogQueryText extends Equatable {
  const CatalogQueryText({
    required this.keywords,
  });

  /// Converts a [Map] to an [CatalogQueryText]
  factory CatalogQueryText.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryTextFromJson(json);

  /// Converts a [CatalogQueryText] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogQueryTextToJson(this);

  /// A list of 1, 2, or 3 search keywords. Keywords with fewer than 3 
  /// characters are ignored.
  final List<String> keywords;

  @override
  List<Object?> get props => [keywords];
}
