import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

/// An object containing all methods for the Locations API. Retrieve this object with `SquareConnect.instance.locationsApi`.
class LocationsApi {
  final String _token;
  final Client _client;
  final String _refreshToken;
  final String _clientId;
  final String _clientSecret;

  LocationsApi(this._token, this._client, this._refreshToken, this._clientId, this._clientSecret);

  /// Lists all locations for a given merchant.
  Future<ListLocationsResponse> listLocations() async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/locations',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return ListLocationsResponse.fromJson(json.decode(response.body));
  }
}
