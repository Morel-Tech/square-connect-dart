import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_catalog_objects.g.dart';

@JsonSerializable()
class RetrieveCatalogObjectsResponse extends SquareResponse {
  const RetrieveCatalogObjectsResponse({
    required this.objects,
    required this.relatedObjects,
    super.errors,
  });

  /// Converts a [Map] to an [RetrieveCatalogObjectsResponse]
  factory RetrieveCatalogObjectsResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RetrieveCatalogObjectsResponseFromJson(json);

  /// Converts a [RetrieveCatalogObjectsResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$RetrieveCatalogObjectsResponseToJson(this);

  final List<CatalogObject> objects;
  final List<CatalogObject> relatedObjects;

  @override
  List<Object?> get props => [
        objects,
        relatedObjects,
        errors,
      ];
}
