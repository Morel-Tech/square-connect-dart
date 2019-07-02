import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/src/catalog/catalog-enums.dart';
import 'package:square_connect/src/catalog/catalog-objects.dart';
import 'package:square_connect/src/catalog/catalog-return-objects.dart';
import 'package:square_connect/src/squareApiConfig.dart';
import 'package:uuid/uuid.dart';


class CatalogApi {

  final String token;
  final Client client;

  CatalogApi({this. token, this.client}):
  assert(token != null),
  assert(client != null);

  
/// Lists all catalog objects. Takes optional [cursor] for pagination, and a list of [CatalogObjectType] to filter types of objects
Future<ListCatalogResponse> listCatalog({List<CatalogObjectType> types, String cursor}) async{
  var params = [
    if (types != null) QueryParam('types', types.map((type) => getCatalogObjectStringFromType(type)).join(',')),
  ];
  var obj = RequestObj(
    cursor: cursor,
    token: token,
    path: '/v2/catalog/list',
    queryParams: params,
    method: RequestMethod.get,
    client: client, 
  );

  var response = await obj.makeCall();
  return (json.decode(response.body)) as ListCatalogResponse;
}

Future<RetrieveCatalogObjectResponse> retrieveCatalogObject({@required String objectId, bool includeRelatedObjects}) async{
  if(objectId == null) {
    print('objectId: $objectId');
    return throw ArgumentError('objectId must not be null');
  }
  var obj = RequestObj(
    path: '/v2/catalog/object/$objectId',
    token: token,
    method: RequestMethod.get,
    queryParams: includeRelatedObjects != null ? [QueryParam('include_related_objects', includeRelatedObjects.toString())] : null,
    client: client,
  );
  var response = await obj.makeCall();
  return RetrieveCatalogObjectResponse.fromJson((json.decode(response.body)));
}

Future<DeleteCatalogObjectResponse> deleteCatalogObject({String objectId}) async{
  if(objectId == null) throw ArgumentError('objectId must not be null');
  var obj = RequestObj(
    path: '/v2/catalog/object/$objectId',
    token: token,
    method: RequestMethod.delete,
    client: client, 
  );
  var response = await obj.makeCall();
  return(json.decode(response.body)) as DeleteCatalogObjectResponse;
  }

  Future<BatchDeleteCatalogObjectsResponse> batchDeleteCatalogObjects({List<String> objectIds}) async{
    if(objectIds == null) throw ArgumentError('objectIds must not be null');
    var obj = RequestObj(
      path: '/v2/catalog/batch-delete',
      token: token,
      method: RequestMethod.post,
      body: {'object_ids': objectIds},
    client: client, 
    );
    var response = await obj.makeCall();
    return(json.decode(response.body)) as BatchDeleteCatalogObjectsResponse;
  }

  Future<BatchRetrieveCatalogObjectsResponse> batchRetrieveCatalogObjects({List<String> objectIds, bool includeRelatedObjects}) async{
  if(objectIds == null) throw ArgumentError('objectIds must not be null');

  Map<String, dynamic> body = {
    'object_ids': objectIds,
  };
  if (includeRelatedObjects != null) body['include_related_objects'] = includeRelatedObjects;

  var obj = RequestObj(
    path: '/v2/catalog/batch-retrieve',
    token: token,
    method: RequestMethod.post,
    body: body,
    client: client, 
  );
  var response = await obj.makeCall();
  return(json.decode(response.body)) as BatchRetrieveCatalogObjectsResponse;
}

  Future<BatchUpsertCatalogObjectsResponse> batchUpsertCatalogObjects({List<CatalogObjectBatch> batches}) async{
    if(batches == null) throw ArgumentError('objectIds must not be null');
    var uuid = new Uuid();

    var body = {
      'idempotency_key': uuid.v4(),
      'batches': batches,
    };

    var obj = RequestObj(
      path: '/v2/catalog/batch-upsert',
      token: token,
      method: RequestMethod.post,
      body: body,
      client: client, 
    );
    var response = await obj.makeCall();
    return(json.decode(response.body)) as BatchUpsertCatalogObjectsResponse;
  }



}