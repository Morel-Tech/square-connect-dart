import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_catalog.g.dart';

@JsonSerializable()
class SearchCatalogRequest extends Equatable {
  const SearchCatalogRequest({
    this.cursor,
    this.objectTypes,
    this.includeDeletedObjects,
    this.includeRelatedObjects,
    this.beginTime,
    this.query,
    this.limit,
  });

  /// Converts a [Map] to an [SearchCatalogResponse]
  factory SearchCatalogRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchCatalogRequestFromJson(json);

  /// Converts a [SearchCatalogResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SearchCatalogRequestToJson(this);

  final String? cursor;
  final List<String>? objectTypes;
  final bool? includeDeletedObjects;
  final bool? includeRelatedObjects;
  final String? beginTime;
  final CatalogQueryType? query;
  final int? limit;

  @override
  List<Object?> get props => [
        cursor,
        objectTypes,
        includeDeletedObjects,
        includeRelatedObjects,
        beginTime,
        query,
        limit,
      ];
}

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
