import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_catalog.g.dart';

@JsonSerializable()
class SearchCatalogResponse extends SquareResponse {
  const SearchCatalogResponse({
    this.cursor,
    required this.objects,
    List<SquareError>? errors,
  }) : super(errors: errors);

  /// Converts a [Map] to an [SearchCatalogResponse]
  factory SearchCatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchCatalogResponseFromJson(json);

  /// Converts a [SearchCatalogResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SearchCatalogResponseToJson(this);

  final String? cursor;
  final List<CatalogObject> objects;

  @override
  List<Object?> get props => [cursor, objects, errors];
}
