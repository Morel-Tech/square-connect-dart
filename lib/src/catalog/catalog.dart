import 'dart:convert';

import 'package:square_connect/src/catalog/catalog-enums.dart';
import 'package:square_connect/src/catalog/catalog-objects.dart';
import 'package:http/http.dart' as http;
import 'package:square_connect/src/squareApiConfig.dart';

var apiKey = '';

Future<List<CatalogObject>> listCatalog({List<CatalogObjectType> types, String cursor}) async{
  var params = [
    if (cursor != null ) QueryParam('cursor', ''),
    if (types != null) QueryParam('types', types.map((type) => getCatalogObjectStringFromType(type)).join(',')),
  ];

  var url = '$baseUrl/catalog/list${getParamListString(params)}';

  final response = await http.get(url, headers: {'Authorization': 'Bearer ' + apiKey});
  final objects = (json.decode(response.body))['objects'] as List<dynamic>;
  final items = objects.map((item) => CatalogObject.fromJson(item)).toList();
  return items;
}