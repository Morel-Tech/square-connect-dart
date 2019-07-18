import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

class LocationsApi {
  final String token;
  final Client client;

  LocationsApi({this.token, this.client})
      : assert(token != null),
        assert(client != null);
  /// Lists all locations for a given merchant.
  Future<ListLocationsResponse> listLocations() async {
    var obj = RequestObj(
      token: token,
      path: '/v2/locations',
      method: RequestMethod.get,
      client: client,
    );

    var response = await obj.makeCall();
    return ListLocationsResponse.fromJson(json.decode(response.body));
  }
}
