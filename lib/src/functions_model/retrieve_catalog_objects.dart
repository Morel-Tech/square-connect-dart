import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_catalog_objects.g.dart';

@JsonSerializable()
class RetrieveCatalogObjectResponse extends SquareResponse {
  const RetrieveCatalogObjectResponse({
    required this.object,
    required this.relatedObjects,
    super.errors,
  });

  /// Converts a [Map] to an [RetrieveCatalogObjectResponse]
  factory RetrieveCatalogObjectResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RetrieveCatalogObjectResponseFromJson(json);

  /// Converts a [RetrieveCatalogObjectResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveCatalogObjectResponseToJson(this);

  final CatalogObject object;
  final List<CatalogObject> relatedObjects;

  @override
  List<Object?> get props => [
        object,
        relatedObjects,
        errors,
      ];
}
