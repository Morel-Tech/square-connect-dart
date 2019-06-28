import 'package:square_connect/src/catalog/catalog-objects.dart';
import 'package:square_connect/src/errors.dart';

class ListCatalogResponse {
  final List<SquareError> errors;
  final String cursor;
  final List<CatalogObject> objects;

  ListCatalogResponse({this.errors, this.cursor, this.objects});

  factory ListCatalogResponse.fromJson(Map<String, dynamic> json) {
    return ListCatalogResponse(
      errors: (json['errors'] as List).map((error) => SquareError.fromJson(error)).toList(),
      cursor: json['cursor'],
      objects: (json['objects'] as List).map((obj) => CatalogObject.fromJson(obj)).toList(),
    );
  }
}