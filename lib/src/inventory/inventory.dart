import 'package:http/http.dart';

/// An object containing all methods for the Inventory API. Retrieve this object with `SquareConnect.instance.inventoryApi`.
class InventoryApi {
  final String _token;
  final Client _client;
  final String _refreshToken;
  final String _clientId;
  final String _clientSecret;

  InventoryApi(this._token, this._client, this._refreshToken, this._clientId, this._clientSecret);
}
