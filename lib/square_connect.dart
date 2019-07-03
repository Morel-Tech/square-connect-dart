import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:square_connect/src/catalog/catalog.dart';

export 'package:square_connect/src/catalog/catalog-return-objects.dart';
export 'package:square_connect/src/catalog/catalog-objects.dart';
export 'package:square_connect/src/catalog/catalog-enums.dart';

class SquareConnect {

  String _authToken;
  Client _client;

  SquareConnect() {
    this._client = IOClient();
  }

  static SquareConnect get instance {
    return SquareConnect();
  }

  setAuthToken({String token}) {
    this._authToken = token;
  }
  setClient({Client client}) {
    this._client = client;
  }

  CatalogApi get catalogApi {
    return CatalogApi(token: _authToken, client: _client);
  }
}
