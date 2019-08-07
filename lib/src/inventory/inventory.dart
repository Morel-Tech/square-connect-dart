import 'dart:convert';

import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/inventory/inventory-enums-converter.dart';
import 'package:uuid/uuid.dart';

/// An object containing all methods for the Inventory API. Retrieve this object with `SquareConnect.instance.inventoryApi`.
class InventoryApi {
  final String _token;
  final Client _client;
  final String _refreshToken;
  final String _clientId;
  final String _clientSecret;

  InventoryApi(this._token, this._client, this._refreshToken, this._clientId,
      this._clientSecret);

  Future<BatchChangeInventoryResponse> batchChangeInventory(
      {String idempotencyKey,
      List<InventoryChange> changes,
      bool ignoreUnchangedCounts}) async {
    var body = Map<String, dynamic>();
    body['idempotency_key'] = idempotencyKey ?? Uuid().v4();
    if (changes != null) body['location_ids'] = changes;
    if (ignoreUnchangedCounts != null)
      body['ignore_unchanged_counts'] = ignoreUnchangedCounts;

    var obj = RequestObj(
      token: _token,
      path: '/v2/inventory/batch-change',
      method: RequestMethod.post,
      body: body,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return BatchChangeInventoryResponse.fromJson(json.decode(response.body));
  }

  Future<BatchRetrieveInventoryChangesResponse> batchRetrieveInventoryChanges(
      {List<String> catalogObjectIds,
      List<String> locationIds,
      List<InventoryChangeType> types,
      List<InventoryState> states,
      DateTime updatedAfter,
      DateTime updatedBefore,
      String cursor}) async {
    var body = Map<String, dynamic>();
    if (catalogObjectIds != null) body['catalog_object_ids'] = catalogObjectIds;
    if (locationIds != null) body['location_ids'] = locationIds;
    if (types != null)
      body['types'] =
          types.map((type) => getStringFromInventoryChangeType(type));
    if (states != null)
      body['states'] =
          states.map((state) => getStringFromInventoryState(state));
    if (updatedAfter != null) body['updated_after'] = updatedAfter.toString();
    if (updatedBefore != null)
      body['updated_before'] = updatedBefore.toString();
    if (cursor != null) body['cursor'] = cursor;

    var obj = RequestObj(
      token: _token,
      path: '/v2/inventory/batch-retrieve-changes',
      method: RequestMethod.post,
      body: body,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return BatchRetrieveInventoryChangesResponse.fromJson(
        json.decode(response.body));
  }

  Future<BatchRetrieveInventoryCountsResponse> batchRetrieveInventoryCounts({
    List<String> catalogObjectIds,
    List<String> locationIds,
    DateTime updatedAfter,
    String cursor,
  }) async {
    var body = Map<String, dynamic>();
    if (catalogObjectIds != null) body['catalog_object_ids'] = catalogObjectIds;
    if (locationIds != null) body['location_ids'] = locationIds;
    if (updatedAfter != null) body['updated_after'] = updatedAfter.toString();
    if (cursor != null) body['cursor'] = cursor;

    var obj = RequestObj(
      token: _token,
      path: '/v2/inventory/batch-retrieve-counts',
      method: RequestMethod.post,
      body: body,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return BatchRetrieveInventoryCountsResponse.fromJson(
        json.decode(response.body));
  }

  Future<RetrieveInventoryAdjustmentResponse> retrieveInventoryAdjustment(
      {String adjustmentId}) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/inventory/adjustment/$adjustmentId',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return RetrieveInventoryAdjustmentResponse.fromJson(
        json.decode(response.body));
  }

  Future<RetrieveInventoryChangesResponse> retrieveInventoryChanges(
      {String catalogObjectId, List<String> locationIds, String cursor}) async {
    List<QueryParam> queryParams = [
      if (locationIds != null) QueryParam('location_id', locationIds.join(',')),
      if (cursor != null) QueryParam('cursor', cursor),
    ];

    var obj = RequestObj(
      token: _token,
      path: '/v2/inventory/$catalogObjectId/changes',
      method: RequestMethod.get,
      queryParams: queryParams,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return RetrieveInventoryChangesResponse.fromJson(
        json.decode(response.body));
  }

  Future<RetrieveInventoryCountResponse> retrieveInventoryCount(
      {String catalogObjectId, List<String> locationIds, String cursor}) async {
    List<QueryParam> queryParams = [
      if (locationIds != null) QueryParam('location_id', locationIds.join(',')),
      if (cursor != null) QueryParam('cursor', cursor),
    ];

    var obj = RequestObj(
      token: _token,
      path: '/v2/inventory/$catalogObjectId',
      method: RequestMethod.get,
      queryParams: queryParams,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return RetrieveInventoryCountResponse.fromJson(json.decode(response.body));
  }

  Future<RetrieveInventoryPhysicalCountResponse>
      retrieveInventoryPhysicalCount({
    String physicalCountId,
  }) async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/inventory/physical-count/$physicalCountId',
      method: RequestMethod.get,
      client: _client,
      refreshToken: _refreshToken,
      clientId: _clientId,
      clientSecret: _clientSecret,
    );

    var response = await obj.makeCall();
    return RetrieveInventoryPhysicalCountResponse.fromJson(
        json.decode(response.body));
  }
}
