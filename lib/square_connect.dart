import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:square_connect/src/auth/auth-enums-converter.dart';
import 'package:square_connect/src/auth/auth-enums.dart';
import 'package:square_connect/src/auth/auth-return-objects.dart';

import 'package:square_connect/src/catalog/catalog.dart';
import 'package:square_connect/src/customer/customer.dart';
import 'package:square_connect/src/employees/employees.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/inventory/inventory.dart';
import 'package:square_connect/src/labor/labor.dart';
import 'package:square_connect/src/locations/locations.dart';
import 'package:square_connect/src/orders/orders.dart';
import 'package:square_connect/src/transactions/transactions.dart';
import 'package:square_connect/src/payments/payments.dart';
import 'package:square_connect/src/refunds/refunds.dart';

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

export 'package:square_connect/src/employees/employees-return-objects.dart';
export 'package:square_connect/src/employees/employees-objects.dart';
export 'package:square_connect/src/employees/employees-enums.dart';
export 'package:square_connect/src/employees/employees.dart';

export 'package:square_connect/src/labor/labor-return-objects.dart';
export 'package:square_connect/src/labor/labor-objects.dart';
export 'package:square_connect/src/labor/labor-enums.dart';
export 'package:square_connect/src/labor/labor.dart';

export 'package:square_connect/src/inventory/inventory-return-objects.dart';
export 'package:square_connect/src/inventory/inventory-objects.dart';
export 'package:square_connect/src/inventory/inventory-enums.dart';
export 'package:square_connect/src/inventory/inventory.dart';

export 'package:square_connect/src/payments/payments-return-objects.dart';
export 'package:square_connect/src/payments/payments-objects.dart';
export 'package:square_connect/src/payments/payments-enums.dart';
export 'package:square_connect/src/payments/payments.dart';

export 'package:square_connect/src/refunds/refunds-return-objects.dart';
export 'package:square_connect/src/refunds/refunds-objects.dart';
export 'package:square_connect/src/refunds/refunds-enums.dart';
export 'package:square_connect/src/refunds/refunds.dart';

export 'package:square_connect/src/shared-enums.dart';
export 'package:square_connect/src/shared-objects.dart';
export 'package:square_connect/src/auth/auth-enums.dart';

/// The Square Connect Client object. It should be obtained by `SquareConnect.instance` or `SquareConnect.getInstanceWithTokens(String token)`
class SquareConnect {
  String _authToken;
  Client _client;
  String _refreshToken;
  String _clientId;
  String _clientSecret;

  /// Object containing all API access. To obtain one, use `SquareConnect.instance`.
  SquareConnect() {
    this._client = IOClient();
  }

  SquareConnect._withToken(String token) {
    this._client = IOClient();
    this._authToken = token;
  }

  SquareConnect._withRefreshToken(
      String refreshToken, String clientId, String clientSecret) {
    this._client = IOClient();
    this._refreshToken = refreshToken;
    this._clientId = clientId;
    this._clientSecret = clientSecret;
  }

  /// Entry point for API. Creates an API client to be reused for calls.
  static SquareConnect get instance {
    return SquareConnect();
  }

  /// Alternate Entry point for API. Creates an API client to be reused for calls without the need to call `setAuthToken()`
  static SquareConnect getInstanceWithToken(String token) {
    return SquareConnect._withToken(token);
  }

  /// Alternate Entry point for API. Creates an API client to be reused and get fresh auth token from refresh token
  static SquareConnect getInstanceWithRefreshToken(
      String refreshToken, String clientId, String clientSecret) {
    return SquareConnect._withRefreshToken(
        refreshToken, clientId, clientSecret);
  }

  /// Sets the authorization token of the client for use in all calls. Must be set before any other calls are made.
  setAuthToken({String token}) {
    this._authToken = token;
  }

  /// Sets the [HttpClient] for use in making API calls. By default, [IOClient] is used.
  setClient({Client client}) {
    this._client = client;
  }

  /// Gets url for oauth permissions and authorizations.
  String getAuthEndpoint({
    String clientId,
    List<OAuthPermission> permissions,
    String locale,
    bool session,
    String state,
  }) {
    var queryParams = [
      if (clientId != null) QueryParam('client_id', clientId),
      if (permissions != null)
        QueryParam(
            'scope',
            permissions
                .map((permission) => getStringFromOAuthPermission(permission))
                .join(' ')),
      if (locale != null) QueryParam('locale', locale),
      if (session != null) QueryParam('session', session.toString()),
      if (state != null) QueryParam('state', state),
    ];

    var queryString = getParamListString(queryParams);

    return 'https://connect.squareup.com/oauth2/authorize$queryString';
  }

  Future<CreateMobileAuthorizationCodeResponse> createMobileAuthorizationCode({
    String locationId,
  }) async {
    if (locationId == null) throw ArgumentError('locationId must not be null');

    var body = {'location_id': locationId};

    var obj = RequestObj(
      token: _authToken,
      path: '/mobile/authorization-code',
      method: RequestMethod.post,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
      body: body,
    );

    var response = await obj.makeCall();
    return CreateMobileAuthorizationCodeResponse.fromJson(
        json.decode(response.body));
  }

  /// Getter for Catalog API methods.
  CatalogApi get catalogApi {
    return CatalogApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Customers API methods.
  CustomersApi get customersApi {
    return CustomersApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Locations API methods.
  LocationsApi get locationsApi {
    return LocationsApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Orders API methods.
  OrdersApi get ordersApi {
    return OrdersApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Transactions API methods.
  TransactionsApi get transactionsApi {
    return TransactionsApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Employees API methods.
  EmployeesApi get employeesApi {
    return EmployeesApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Labor API methods.
  LaborApi get laborApi {
    return LaborApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Inventory API methods.
  InventoryApi get inventoryApi {
    return InventoryApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Payments API methods.
  PaymentsApi get paymentsApi {
    return PaymentsApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }

  /// Getter for Refunds API methods.
  RefundsApi get refundsApi {
    return RefundsApi(
        _authToken, _client, _refreshToken, _clientId, _clientSecret);
  }
}
