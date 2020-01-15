import 'dart:convert';

import 'package:square_connect/square_connect.dart';
import 'package:test/test.dart';

import 'square_connect_test.dart';

void main() {
  group('Catalog Object fromJson', () {
    test('type parses correctly', () {
      var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
      expect(object.type, CatalogObjectType.item);
    });
    test('id parses correctly', () {
      var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
      expect(object.id, 'L3N4FU22JFINH4ZGZDMBKJBJ');
    });
    test('updatedAt parses correctly', () {
      var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
      expect(object.updatedAt, DateTime.parse('2019-05-29T00:33:13.689Z'));
    });
    test('version parses correctly', () {
      var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
      expect(object.version, 1559089993689);
    });
    test('isDeleted parses correctly', () {
      var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
      expect(object.isDeleted, false);
    });
    test('presentAtAllLocations parses correctly', () {
      var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
      expect(object.presentAtAllLocations, true);
    });
    test('presentAtLocationIds parses correctly', () {
      var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
      expect(object.presentAtLocationIds, null);
    });
    test('absentAtLocationIds parses correctly', () {
      var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
      expect(object.absentAtLocationIds, null);
    });
  });
}
