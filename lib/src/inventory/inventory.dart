import 'package:http/http.dart';

/// An object containing all methods for the Inventory API. Retrieve this object with `SquareConnect.instance.inventoryApi`.
class InventoryApi {
  final String _token;
  final Client _client;

  InventoryApi(this._token, this._client);
}
