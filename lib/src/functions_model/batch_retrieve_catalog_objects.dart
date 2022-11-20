import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'batch_retrieve_catalog_objects.g.dart';

@JsonSerializable()
class BatchRetrieveCatalogObjectsRequest extends Equatable {
  const BatchRetrieveCatalogObjectsRequest({
    required this.objectIds,
    this.includeRelatedObjects,
    this.catalogVersion,
    this.includeDeletedObjects,
  });

  /// Converts a [Map] to an [BatchRetrieveCatalogObjectsRequest]
  factory BatchRetrieveCatalogObjectsRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BatchRetrieveCatalogObjectsRequestFromJson(json);

  /// Converts a [BatchRetrieveCatalogObjectsRequest] to a [Map]
  Map<String, dynamic> toJson() =>
      _$BatchRetrieveCatalogObjectsRequestToJson(this);

  final List<String> objectIds;
  final bool? includeRelatedObjects;
  final int? catalogVersion;
  final bool? includeDeletedObjects;

  @override
  List<Object?> get props => [];
}

@JsonSerializable()
class BatchRetrieveCatalogObjectsResponse extends SquareResponse {
  const BatchRetrieveCatalogObjectsResponse({
    required this.objects,
    required this.relatedObjects,
    super.errors,
  });

  /// Converts a [Map] to an [BatchRetrieveCatalogObjectsResponse]
  factory BatchRetrieveCatalogObjectsResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BatchRetrieveCatalogObjectsResponseFromJson(json);

  /// Converts a [BatchRetrieveCatalogObjectsResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$BatchRetrieveCatalogObjectsResponseToJson(this);

  final List<CatalogObject> objects;
  final List<CatalogObject> relatedObjects;

  @override
  List<Object?> get props => [
        objects,
        relatedObjects,
        errors,
      ];
}
