import 'package:http/http.dart';
import 'package:http/io_client.dart';

import 'package:square_connect/src/catalog/catalog.dart';
import 'package:square_connect/src/customer/customer.dart';
import 'package:square_connect/src/locations/locations.dart';

export 'package:square_connect/src/catalog/catalog-return-objects.dart';
export 'package:square_connect/src/catalog/catalog-objects.dart';
export 'package:square_connect/src/catalog/catalog-enums.dart';

export 'package:square_connect/src/customer/customer-return-objects.dart';
export 'package:square_connect/src/customer/customer-objects.dart';
export 'package:square_connect/src/customer/customer-enums.dart';

export 'package:square_connect/src/locations/locations-return-objects.dart';
export 'package:square_connect/src/locations/locations-objects.dart';
export 'package:square_connect/src/locations/locations-enums.dart';

export 'package:square_connect/src/errors.dart';
export 'package:square_connect/src/money.dart';


class SquareConnect {
  String _authToken;
  Client _client;

  /// Object containing all API access. To obtain one, use `SquareConnect.instance`.
  SquareConnect() {
    this._client = IOClient();
  }

  /// Entry point for API. Creates an API client to be reused for calls.
  static SquareConnect get instance {
    return SquareConnect();
  }

  /// Sets the authorization token of the client for use in all calls. Must be set before any other calls are made.
  setAuthToken({String token}) {
    this._authToken = token;
  }

  /// Sets the [HttpClient] for use in making API calls. By default, [IOClient] is used.
  setClient({Client client}) {
    this._client = client;
  }


  /// Getter for Catalog API methods.
  CatalogApi get catalogApi {
    return CatalogApi(token: _authToken, client: _client);
  }

  /// Getter for Customers API methods.
  CustomersApi get customersApi {
    return CustomersApi(token: _authToken, client: _client);
  }

  LocationsApi get locationsApi {
    return LocationsApi(token: _authToken, client: _client);
  }
}
