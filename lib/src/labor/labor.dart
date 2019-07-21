import 'package:http/http.dart';

/// An object containing all methods for the Labor API. Retrieve this object with `SquareConnect.instance.laborApi`.
class LaborApi {
  final String _token;
  final Client _client;

  LaborApi(this._token, this._client);

}