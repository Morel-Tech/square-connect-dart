import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/src/catalog/catalog-enums-converter.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/shared-enums-converter.dart';
import 'package:uuid/uuid.dart';
import 'package:square_connect/square_connect.dart';

class CatalogApi {
  final String _token;
  final Client _client;

  CatalogApi(this._token, this._client);

  /// Lists all [CatalogObject]s fitting criteria.
  Future<ListCatalogResponse> listCatalog({
    /// A list of [CatalogObjectType]s. The call will only return objects of these types, or all types if not set.
    List<CatalogObjectType> types,
    /// A pagination cursor from a previous call.
    String cursor,
  }) async {
    var params = [
      if (types != null)
        QueryParam(
            'types',
            types
                .map((type) => getStringFromCatalogObjectType(type))
                .join(',')),
    ];
    var obj = RequestObj(
      cursor: cursor,
      token: _token,
      path: '/v2/catalog/list',
      queryParams: params,
      method: RequestMethod.get,
      client: _client,
    );

    var response = await obj.makeCall();
    return ListCatalogResponse.fromJson(json.decode(response.body));
  }

  /// Retrieves a [CatalogObject] specified by a given object id.
  Future<RetrieveCatalogObjectResponse> retrieveCatalogObject({
    /// The id of the [Catalog Object] to be retreived.
      @required String objectId, 
      /// If `true`, the reponse will include related objects. Eg, ItemsVariations with Items, Images with Items, ect.
      bool includeRelatedObjects
    }) async {
    if (objectId == null) {
      return throw ArgumentError('objectId must not be null');
    }
    var obj = RequestObj(
      path: '/v2/catalog/object/$objectId',
      token: _token,
      method: RequestMethod.get,
      queryParams: includeRelatedObjects != null
          ? [
              QueryParam(
                  'include_related_objects', includeRelatedObjects.toString())
            ]
          : null,
      client: _client,
    );
    var response = await obj.makeCall();
    return RetrieveCatalogObjectResponse.fromJson((json.decode(response.body)));
  }
  
  Future<DeleteCatalogObjectResponse> deleteCatalogObject(
      {String objectId}) async {
    if (objectId == null) throw ArgumentError('objectId must not be null');
    var obj = RequestObj(
      path: '/v2/catalog/object/$objectId',
      token: _token,
      method: RequestMethod.delete,
      client: _client,
    );
    var response = await obj.makeCall();
    return DeleteCatalogObjectResponse.fromJson(json.decode(response.body));
  }

  Future<BatchDeleteCatalogObjectsResponse> batchDeleteCatalogObjects(
      {List<String> objectIds}) async {
    if (objectIds == null) throw ArgumentError('objectIds must not be null');
    var obj = RequestObj(
      path: '/v2/catalog/batch-delete',
      token: _token,
      method: RequestMethod.post,
      body: {'object_ids': objectIds},
      client: _client,
    );
    var response = await obj.makeCall();
    return BatchDeleteCatalogObjectsResponse.fromJson(
        json.decode(response.body));
  }

  Future<BatchRetrieveCatalogObjectsResponse> batchRetrieveCatalogObjects(
      {List<String> objectIds, bool includeRelatedObjects}) async {
    if (objectIds == null) throw ArgumentError('objectIds must not be null');

    Map<String, dynamic> body = {
      'object_ids': objectIds,
    };
    if (includeRelatedObjects != null)
      body['include_related_objects'] = includeRelatedObjects;

    var obj = RequestObj(
      path: '/v2/catalog/batch-retrieve',
      token: _token,
      method: RequestMethod.post,
      body: body,
      client: _client,
    );
    var response = await obj.makeCall();
    return BatchRetrieveCatalogObjectsResponse.fromJson(
        json.decode(response.body));
  }

  Future<BatchUpsertCatalogObjectsResponse> batchUpsertCatalogObjects(
      {List<CatalogObjectBatch> batches}) async {
    if (batches == null) throw ArgumentError('objectIds must not be null');
    var uuid = new Uuid();

    var body = {
      'idempotency_key': uuid.v4(),
      'batches': batches,
    };

    var obj = RequestObj(
      path: '/v2/catalog/batch-upsert',
      token: _token,
      method: RequestMethod.post,
      body: body,
      client: _client,
    );
    var response = await obj.makeCall();
    return BatchUpsertCatalogObjectsResponse.fromJson(
        json.decode(response.body));
  }

  Future<CatalogInfoResponse> getCatalogInfo() async {
    var obj = RequestObj(
      token: _token,
      path: '/v2/catalog/info',
      method: RequestMethod.get,
      client: _client,
    );

    var response = await obj.makeCall();
    return CatalogInfoResponse.fromJson(json.decode(response.body));
  }

  Future<SearchCatalogObjectsResponse> searchCatalogObjects({
    String cursor,
    List<CatalogObjectType> types,
    bool includeDeletedObjects,
    bool includeRelatedObjects,
    DateTime beginTime,
    int limit,
    CatalogQueryType queryType,
    String attributeName,
    String initialAttributeValue,
    SortOrder sortOrder,
    String attributeValue,
    String attributePrefix,
    int attributeMinValue,
    int attributeMaxValue,
    List<String> keywords,
    List<String> taxIds,
    List<String> modifierListIds,
  }) async {
    Map<String, dynamic> body = Map<String, dynamic>();

    if (cursor != null) body['cursor'] = cursor;
    if (types != null) body['object_types'] = types.map((type) => getStringFromCatalogObjectType(type)).toList();
    if (includeDeletedObjects != null) body['include_deleted_objects'] = includeDeletedObjects;
    if (includeRelatedObjects != null) body['include_related_objects'] = includeRelatedObjects;
    if (beginTime != null) body['begin_time'] = beginTime.toUtc().toIso8601String();
    if (limit != null) body['limit'] = limit;

    switch (queryType) {
      
      case CatalogQueryType.sortedAttributeQuery:
        body['query'] = Map<String, dynamic>();
        body['query']['sorted_attribute_query'] = Map<String, dynamic>();
        if (attributeName != null) body['query']['sorted_attribute_query']['attribute_name'] = attributeName;
        if (initialAttributeValue != null) body['query']['sorted_attribute_query']['initial_attribute_value'] = initialAttributeValue;
        if (sortOrder != null) body['query']['sorted_attribute_query']['sort_order'] = getStringFromSortOrder(sortOrder);
        break;
      case CatalogQueryType.exactQuery:
        body['query'] = Map<String, dynamic>();
        body['query']['exact_query'] = Map<String, dynamic>();
        if (attributeName != null) body['query']['exact_query']['attribute_name'] = attributeName;
        if (attributeValue != null) body['query']['exact_query']['attribute_value'] = attributeValue;
        break;
      case CatalogQueryType.prefixQuery:
        body['query'] = Map<String, dynamic>();
        body['query']['prefix_query'] = Map<String, dynamic>();
        if (attributeName != null) body['query']['prefix_query']['attribute_name'] = attributeName;
        if (attributePrefix != null) body['query']['prefix_query']['attribute_prefix'] = attributePrefix;
        break;
      case CatalogQueryType.rangeQuery:
        body['query'] = Map<String, dynamic>();
        body['query']['range_query'] = Map<String, dynamic>();
        if (attributeName != null) body['query']['range_query']['attribute_name'] = attributeName;
        if (attributeMinValue != null) body['query']['range_query']['attribute_min_value'] = attributeMinValue;
        if (attributeMaxValue != null) body['query']['range_query']['attribute_max_value'] = attributeMaxValue;
        break;
      case CatalogQueryType.textQuery:
        body['query'] = Map<String, dynamic>();
        body['query']['text_query'] = Map<String, dynamic>();
        if (keywords != null) body['query']['text_query']['keywords'] = keywords;
        break;
      case CatalogQueryType.itemsForTaxQuery:
        body['query'] = Map<String, dynamic>();
        body['query']['text_query'] = Map<String, dynamic>();
        if (taxIds != null) body['query']['items_for_tax_query']['tax_ids'] = taxIds;
        break;
      case CatalogQueryType.itemsForModifierListQuery:
        body['query'] = Map<String, dynamic>();
        body['query']['text_query'] = Map<String, dynamic>();
        if (modifierListIds != null) body['query']['items_for_modifier_list_query']['modifier_list_ids'] = modifierListIds;
        break;
    }

    var obj = RequestObj(
      token: _token,
      path: '/v2/catalog/search',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );
    var response = await obj.makeCall();
    return SearchCatalogObjectsResponse.fromJson(json.decode(response.body));
  }

  
}
