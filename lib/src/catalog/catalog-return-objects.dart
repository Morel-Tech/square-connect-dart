import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/super-classes.dart';

/// Response from the [listCatalog()] method in the [CatalogApi].
class ListCatalogResponse extends ApiResponse {
  /// List of errors returned from the API. If null, there were no errors.
  final List<SquareError> errors;

  /// Cursor string for pagination. Null if no more results exist.
  final String cursor;

  /// The list of [CatalogObject]s returned by the API
  final List<CatalogObject> objects;

  ListCatalogResponse({this.errors, this.cursor, this.objects});

  factory ListCatalogResponse.fromJson(Map<String, dynamic> json) {
    return ListCatalogResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      cursor: json['cursor'],
      objects: json['objects'] != null
          ? (json['objects'] as List)
              .map((obj) => CatalogObject.fromJson(obj))
              .toList()
          : null,
    );
  }
}

/// Response from the [retrieveCatalogObject()] method in the [CatalogApi].
class RetrieveCatalogObjectResponse extends ApiResponse {
  /// List of errors returned from the API. If null, there were no errors.
  final List<SquareError> errors;

  /// The object returned by the API
  final CatalogObject object;

  /// If includeRelatedObjects is true, then a List of [CatalogObject]s that are related to the primary object (ie [CatalogItemVariation]s of and [CatalogItem])
  final List<CatalogObject> relatedObjects;

  RetrieveCatalogObjectResponse(
      {this.errors, this.object, this.relatedObjects});

  factory RetrieveCatalogObjectResponse.fromJson(Map<String, dynamic> json) {
    return RetrieveCatalogObjectResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      object: CatalogObject.fromJson(json['object']),
      relatedObjects: json['related_objects'] != null
          ? (json['related_objects'] as List)
              .map((item) => CatalogObject.fromJson(item))
              .toList()
          : null,
    );
  }
}

class DeleteCatalogObjectResponse extends ApiResponse {
  final List<SquareError> errors;
  final List<String> deletedObjectIds;
  final DateTime deletedAt;

  DeleteCatalogObjectResponse(
      {this.errors, this.deletedObjectIds, this.deletedAt});

  factory DeleteCatalogObjectResponse.fromJson(Map<String, dynamic> json) {
    return DeleteCatalogObjectResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      deletedAt: json['deleted_at'] != null
          ? DateTime.parse(json['deleted_at'])
          : null,
      deletedObjectIds: json['deleted_object_ids'] != null
          ? List<String>.from(json['deleted_object_ids'])
          : null,
    );
  }
}

class BatchDeleteCatalogObjectsResponse extends ApiResponse {
  final List<SquareError> errors;
  final List<String> deletedObjectIds;
  final DateTime deletedAt;

  BatchDeleteCatalogObjectsResponse(
      {this.errors, this.deletedObjectIds, this.deletedAt});

  factory BatchDeleteCatalogObjectsResponse.fromJson(
      Map<String, dynamic> json) {
    return BatchDeleteCatalogObjectsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      deletedAt: DateTime.parse(json['deleted_at']),
      deletedObjectIds: List<String>.of(json['deleted_object_ids']),
    );
  }
}

class BatchRetrieveCatalogObjectsResponse extends ApiResponse {
  final List<SquareError> errors;
  final List<CatalogObject> objects;
  final List<CatalogObject> relatedObjects;

  BatchRetrieveCatalogObjectsResponse(
      {this.errors, this.objects, this.relatedObjects});

  factory BatchRetrieveCatalogObjectsResponse.fromJson(
      Map<String, dynamic> json) {
    return BatchRetrieveCatalogObjectsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      objects: json['object'] != null ?
          (json['objects'] as List).map((item) => CatalogObject.fromJson(item)).toList()
          :null ,
      relatedObjects: json['related_objects'] != null 
        ?(json['related_objects'] as List)
            .map((item) => CatalogObject.fromJson(item))
            .toList()
        : null,
    );
  }
}

class BatchUpsertCatalogObjectsResponse extends ApiResponse {
  final List<SquareError> errors;
  final List<CatalogObject> objects;
  final DateTime updatedAt;
  final Map<String, String> idMappings;

  BatchUpsertCatalogObjectsResponse(
      {this.errors, this.objects, this.updatedAt, this.idMappings});

  factory BatchUpsertCatalogObjectsResponse.fromJson(
      Map<String, dynamic> json) {
    var mappingsMap = Map<String, String>();
    (json['id_mappings'] as List).forEach((item) {
      mappingsMap[item['client_object_id']] = item['object_id'];
    });

    return BatchUpsertCatalogObjectsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      objects:
          (json['objects'] as List).map((item) => CatalogObject.fromJson(item)),
      updatedAt: DateTime.parse(json['updated_at']),
      idMappings: mappingsMap,
    );
  }
}

class CatalogInfoResponse extends ApiResponse {
  final List<SquareError> errors;
  final CatalogInfoResponseLimits limits;
  final StandardUnitDescriptionGroup standardUnitDescriptionGroup;

  CatalogInfoResponse(
      {this.errors, this.limits, this.standardUnitDescriptionGroup});

  factory CatalogInfoResponse.fromJson(Map<String, dynamic> json) {
    return CatalogInfoResponse(
        errors: json['errors'] != null
            ? (json['errors'] as List)
                .map((error) => SquareError.fromJson(error))
                .toList()
            : null,
        limits: json['limits'] != null
            ? CatalogInfoResponseLimits.fromJson(json['limits'])
            : null,
        standardUnitDescriptionGroup:
            json['standard_unit_description_group'] != null
                ? StandardUnitDescriptionGroup.fromJson(
                    json['standard_unit_description_group'])
                : null);
  }
}

class SearchCatalogObjectsResponse extends ApiResponse {
  final String cursor;
  final List<SquareError> errors;
  final List<CatalogObject> objects;
  final List<CatalogObject> relatedObjects;

  SearchCatalogObjectsResponse(
      {this.cursor, this.errors, this.objects, this.relatedObjects});

  factory SearchCatalogObjectsResponse.fromJson(Map<String, dynamic> json) {
    return SearchCatalogObjectsResponse(
      cursor: json['cursor'],
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      objects: json['objects'] != null
          ? (json['objects'] as List)
              .map((error) => CatalogObject.fromJson(error))
              .toList()
          : null,
      relatedObjects: json['related_objects'] != null
          ? (json['related_objects'] as List)
              .map((error) => CatalogObject.fromJson(error))
              .toList()
          : null,
    );
  }
}

class UpdateItemModifierListsResponse extends ApiResponse {
  final DateTime updatedAt;
  final List<SquareError> errors;

  UpdateItemModifierListsResponse({
    this.updatedAt,
    this.errors,
  });

  factory UpdateItemModifierListsResponse.fromJson(Map<String, dynamic> json) {
    return UpdateItemModifierListsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}

class UpdateItemTaxesResponse extends ApiResponse {
  final DateTime updatedAt;
  final List<SquareError> errors;

  UpdateItemTaxesResponse({
    this.updatedAt,
    this.errors,
  });

  factory UpdateItemTaxesResponse.fromJson(Map<String, dynamic> json) {
    return UpdateItemTaxesResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}

class UpsertCatalogObjectResponse extends ApiResponse {
  final List<SquareError> errors;
  final CatalogObject object;
  final List<CatalogIdMapping> idMappings;

  UpsertCatalogObjectResponse({this.errors, this.object, this.idMappings});

  factory UpsertCatalogObjectResponse.fromJson(Map<String, dynamic> json) {
    return UpsertCatalogObjectResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      object: json['catalog_object'] != null
          ? CatalogObject.fromJson(json['catalog_object'])
          : null,
      idMappings: json['id_mappings'] != null
          ? (json['id_mappings'] as List)
              .map((item) => CatalogIdMapping.fromJson(item))
              .toList()
          : null,
    );
  }
}
