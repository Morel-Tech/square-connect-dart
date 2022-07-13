import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_catalog.g.dart';

@JsonSerializable()
class ListCatalogResponse extends SquareResponse {
  const ListCatalogResponse({
    this.cursor,
    required this.objects,
    super.errors,
  });

  /// Converts a [Map] to an [ListCatalogResponse]
  factory ListCatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCatalogResponseFromJson(json);

  /// Converts a [ListCatalogResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListCatalogResponseToJson(this);

  final String? cursor;
  final List<CatalogObject> objects;

  @override
  List<Object?> get props => [cursor, objects, errors];
}
