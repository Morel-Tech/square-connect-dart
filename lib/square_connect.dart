import 'package:http/http.dart';
import 'package:http/io_client.dart';

import 'package:square_connect/src/catalog/catalog.dart';
import 'package:square_connect/src/customer/customer.dart';
import 'package:square_connect/src/locations/locations.dart';
import 'package:square_connect/src/orders/orders.dart';

export 'package:square_connect/src/catalog/catalog-return-objects.dart';
export 'package:square_connect/src/catalog/catalog-objects.dart';
export 'package:square_connect/src/catalog/catalog-enums.dart';
export 'package:square_connect/src/catalog/catalog.dart';

export 'package:square_connect/src/customer/customer-return-objects.dart';
export 'package:square_connect/src/customer/customer-objects.dart';
export 'package:square_connect/src/customer/customer-enums.dart';
export 'package:square_connect/src/customer/customer.dart';

export 'package:square_connect/src/locations/locations-return-objects.dart';
export 'package:square_connect/src/locations/locations-objects.dart';
export 'package:square_connect/src/locations/locations-enums.dart';
export 'package:square_connect/src/locations/locations.dart';

export 'package:square_connect/src/orders/orders-return-objects.dart';
export 'package:square_connect/src/orders/orders-objects.dart';
export 'package:square_connect/src/orders/orders-enums.dart';
export 'package:square_connect/src/orders/orders.dart';

export 'package:square_connect/src/transactions/transactions-return-objects.dart';
export 'package:square_connect/src/transactions/transactions-objects.dart';
export 'package:square_connect/src/transactions/transactions-enums.dart';
export 'package:square_connect/src/transactions/transactions.dart';

export 'package:square_connect/src/shared-enums.dart';
export 'package:square_connect/src/shared-objects.dart';

/// The Square Connect Client object. It should be obtained by `SquareConnect.instance` or `SquareConnect.getInstanceWithTokens(String token)`
class SquareConnect {
  String _authToken;
  Client _client;

  /// Object containing all API access. To obtain one, use `SquareConnect.instance`.
  SquareConnect() {
    this._client = IOClient();
  }

  SquareConnect._withToken(String token) {
    this._client = IOClient();
    this._authToken = token;
  }

  /// Entry point for API. Creates an API client to be reused for calls.
  static SquareConnect get instance {
    return SquareConnect();
  }

  /// Alternate Entry point for API. Creates an API client to be reused for calls without the need to call `setAuthToken()`
  static SquareConnect getInstanceWithToken(String token) {
    return SquareConnect._withToken(token);
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
    return CatalogApi(_authToken, _client);
  }

  /// Getter for Customers API methods.
  CustomersApi get customersApi {
    return CustomersApi(_authToken, _client);
  }

  /// Getter for Locations API methods.
  LocationsApi get locationsApi {
    return LocationsApi(_authToken, _client);
  }

  /// Getter for Orders API methods.
  OrdersApi get ordersApi {
    return OrdersApi(_authToken, _client);
  }
}
