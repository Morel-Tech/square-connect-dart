import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

class LocationsApi {
  final String _token;
  final Client _client;

  LocationsApi(this._token, this._client);

  /// Lists all locations for a given merchant.
  Future<ListLocationsResponse> listLocations() async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/locations',
      method: RequestMethod.get,
      client: _client,
    );

    var response = await obj.makeCall();
    return ListLocationsResponse.fromJson(json.decode(response.body));
  }
}
