import 'package:square_connect/src/catalog/catalog-objects.dart';
import 'package:square_connect/src/errors.dart';

class ListCatalogResponse {
  final List<SquareError> errors;
  final String cursor;
  final List<CatalogObject> objects;

  ListCatalogResponse({this.errors, this.cursor, this.objects});

  factory ListCatalogResponse.fromJson(Map<String, dynamic> json) {
    return ListCatalogResponse(
      errors: json['errors'] != null ? (json['errors'] as List).map((error) => SquareError.fromJson(error)).toList() : null,
      cursor: json['cursor'],
      objects: (json['objects'] as List).map((obj) => CatalogObject.fromJson(obj)).toList(),
    );
  }
}
class RetrieveCatalogObjectResponse {
  final List<SquareError> errors;
  final CatalogObject object;
  final List<CatalogObject> relatedObjects;

  RetrieveCatalogObjectResponse({this.errors, this.object, this.relatedObjects});

  factory RetrieveCatalogObjectResponse.fromJson(Map<String, dynamic> json) {
    return RetrieveCatalogObjectResponse(
      errors: json['errors'] != null ? (json['errors'] as List).map((error) => SquareError.fromJson(error)).toList() : null,
      object: CatalogObject.fromJson(json['object']),
      relatedObjects: json['related_objects'] != null ? (json['related_objects'] as List).map((item) => CatalogObject.fromJson(item)).toList() : null,
    );
  }
}

class DeleteCatalogObjectResponse {
  final List<SquareError> errors;
  final List<String> deletedObjectIds;
  final DateTime deletedAt;

  DeleteCatalogObjectResponse({this.errors, this.deletedObjectIds, this.deletedAt});

  factory DeleteCatalogObjectResponse.fromJson(Map<String, dynamic> json) {
    return DeleteCatalogObjectResponse(
      errors: json['errors'] != null ? (json['errors'] as List).map((error) => SquareError.fromJson(error)).toList() : null,
      deletedAt: DateTime.parse(json['deleted_at']),
      deletedObjectIds: List<String>.of(json['deleted_object_ids']),
    );
  }
}

class BatchDeleteCatalogObjectsResponse {
  final List<SquareError> errors;
  final List<String> deletedObjectIds;
  final DateTime deletedAt;

  BatchDeleteCatalogObjectsResponse({this.errors, this.deletedObjectIds, this.deletedAt});

  factory BatchDeleteCatalogObjectsResponse.fromJson(Map<String, dynamic> json) {
    return BatchDeleteCatalogObjectsResponse(
      errors: json['errors'] != null ? (json['errors'] as List).map((error) => SquareError.fromJson(error)).toList() : null,
      deletedAt: DateTime.parse(json['deleted_at']),
      deletedObjectIds: List<String>.of(json['deleted_object_ids']),
    );
  }
}

class BatchRetrieveCatalogObjectsResponse {
  final List<SquareError> errors;
  final List<CatalogObject> objects;
  final List<CatalogObject> relatedObjects;

  BatchRetrieveCatalogObjectsResponse({this.errors, this.objects, this.relatedObjects});

  factory BatchRetrieveCatalogObjectsResponse.fromJson(Map<String, dynamic> json) {
    return BatchRetrieveCatalogObjectsResponse(
      errors: json['errors'] != null ? (json['errors'] as List).map((error) => SquareError.fromJson(error)).toList() : null,
      objects: (json['objects'] as List).map((item) => CatalogObject.fromJson(item)),
      relatedObjects: (json['related_objects'] as List).map((item) => CatalogObject.fromJson(item)).toList(),
    );
  }
}

class BatchUpsertCatalogObjectsResponse {
  final List<SquareError> errors;
  final List<CatalogObject> objects;
  final DateTime updatedAt;
  final Map<String, String> idMappings;

  BatchUpsertCatalogObjectsResponse({this.errors, this.objects, this.updatedAt, this.idMappings});

  factory BatchUpsertCatalogObjectsResponse.fromJson(Map<String, dynamic> json ) {
    var mappingsMap = Map<String, String>();
    (json['id_mappings'] as List).forEach((item) {
      mappingsMap[item['client_object_id']] = item['object_id'];
    });

    return BatchUpsertCatalogObjectsResponse(
      errors: json['errors'] != null ? (json['errors'] as List).map((error) => SquareError.fromJson(error)).toList() : null,
      objects: (json['objects'] as List).map((item) => CatalogObject.fromJson(item)),
      updatedAt: DateTime.parse(json['updated_at']),
      idMappings: mappingsMap,
    );
  }
}

class CatalogInfoResponse {
  final List<SquareError> errors;
  final CatalogInfoResponseLimits limits;
  final StandardUnitDescriptionGroup standardUnitDescriptionGroup;

  
}