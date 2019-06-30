import 'dart:async';

import 'package:flutter/services.dart';
import 'package:square_connect/src/catalog/catalog-enums.dart';
import 'package:square_connect/src/catalog/catalog-return-objects.dart';
import 'package:square_connect/src/catalog/catalog.dart';

class SquareConnect {

  String _authToken;

  static SquareConnect get instance {
    return SquareConnect();
  }

  setAuthToken({String token}) {
    this._authToken = token;
  }

  CatalogApi get catalogApi {
    return CatalogApi(token: _authToken);
  }
}

main() {
  var client = SquareConnect.instance;
  client.setAuthToken(token: '');

  client.catalogApi.listCatalog();
}