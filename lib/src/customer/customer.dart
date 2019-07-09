import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';

import '../helper-classes.dart';

class CustomersApi {
  final String token;
  final Client client;

  CustomersApi({this.token, this.client})
      : assert(token != null),
        assert(client != null);

  Future<CreateCustomerResponse> createCustomer({
    String givenName,
    String familyName,
    String companyName,
    String nickname,
    String email,
    String phoneNumber,
    String referenceId,
    String note,
    DateTime birthday,
    Address address,
  }) async{
    
  }

  Future<CreateCustomerCardResponse> createCustomerCard({
    @required String customerId,
    String cardNonce,
    Address billingAddress,
    String cardholderName,
    String verificationToken,
  }) async{

  }

  Future<DeleteCustomerResponse> deleteCustomer({@required String customerId}) async{
    if (customerId == null)  throw ArgumentError('customerId must not be null');
    var obj = RequestObj(
      token: token,
      path: '/v2/customers/$customerId',
      method: RequestMethod.delete,
      client: client,
    );

    var response = await obj.makeCall();
    return DeleteCustomerResponse.fromJson(json.decode(response.body));
  }

  Future<DeleteCustomerCardResponse> deleteCustomerCard({String customerId, String cardId}) async{
    if (customerId == null)  throw ArgumentError('customerId must not be null');
    if (cardId == null)  throw ArgumentError('cardId must not be null');
    var obj = RequestObj(
      token: token,
      path: '/v2/customers/$customerId/cards/$cardId',
      method: RequestMethod.delete,
      client: client,
    );

    var response = await obj.makeCall();
    return DeleteCustomerCardResponse.fromJson(json.decode(response.body));
  }

  Future<ListCustomersResponse> listCustomers({
    String cursor,
    CustomerSortField sortField,
    SortOrder sortOrder,
  })async{
    List<QueryParam> queryParams = [];
    if (sortOrder != null) queryParams.add(QueryParam('sort_order', getStringFromSortOrder(sortOrder)));
    if (sortField != null) queryParams.add(QueryParam('sort_field', getStringFromCustomerSortField(sortField)));

    var obj = RequestObj(
      token: token,
      cursor: cursor,
      path: '/v2/customers',
      method: RequestMethod.get,
      client: client,
      queryParams: queryParams,
    );

    var response = await obj.makeCall();
    return ListCustomersResponse.fromJson(json.decode(response.body));
  }

  Future<RetrieveCustomerResponse> retrieveCustomer({
    @required String customerId,
  }) async {
    if (customerId == null) throw ArgumentError('customerId must not be null');

    var obj = RequestObj(
      token: token,
      path: '/v2/customers/$customerId',
      method: RequestMethod.get,
      client: client,
    );
    var response = await obj.makeCall();
    return RetrieveCustomerResponse.fromJson(json.decode(response.body));
  }

  Future<SearchCustomersResponse> searchCustomers({
    String cursor,
    int limit,
    CustomerCreationSource creationSource,
    DateTime createdAtStart,
    DateTime createdAtEnd,
    DateTime updatedAtStart,
    DateTime updatedAtEnd,
    CustomerSortField sortField,
    SortOrder sortOrder,
  }) async {

    Map<String, dynamic> body = {};

    if (cursor != null) body['cursor'] = cursor;
    if(limit != null) body['limit'] = limit;

    body['query'] = Map<String, dynamic>();
    if (createdAtStart != null || createdAtEnd != null || updatedAtStart != null || updatedAtEnd != null || creationSource != null) body['query']['filter'] = Map<String, dynamic>();
    if (createdAtStart != null || createdAtEnd != null) body['query']['filter']['created_at'] = Map<String, dynamic>();
    if (updatedAtStart != null || updatedAtEnd != null) body['query']['filter']['updated_at'] = Map<String, dynamic>();

    if(createdAtStart != null) body['query']['filter']['created_at']['start_at'] = createdAtStart.toIso8601String();
    if(createdAtEnd != null) body['query']['filter']['created_at']['end_at'] = createdAtEnd.toIso8601String();
    if(updatedAtStart != null) body['query']['filter']['updated_at']['start_at'] = updatedAtStart.toIso8601String();
    if(updatedAtEnd != null) body['query']['filter']['updated_at']['end_at'] = updatedAtEnd.toIso8601String();
    if(creationSource != null) body['query']['filter']['creation_source'] = getStringFromCustomerCreationSource(creationSource);

    if (sortField != null || sortOrder != null) body['query']['sort'] = Map<String, dynamic>();

    if(sortField != null) body['query']['sort']['field'] = getStringFromCustomerSortField(sortField) ;
    if(sortOrder != null) body['query']['sort']['order'] = getStringFromSortOrder(sortOrder);

    var obj = RequestObj(
      token: token,
      path: '/v2/customers/search',
      method: RequestMethod.post,
      client: client,
      body: body,
    );
    var response = await obj.makeCall();
    return SearchCustomersResponse.fromJson(json.decode(response.body));
  }

  Future<UpdateCustomerResponse> updateCustomer({
    @required String customerId,
    String givenName,
    String familyName,
    String companyName,
    String nickname,
    String emailAddress,
    Address address,
    String phoneNumber,
    String referenceId,
    String note,
    DateTime birthday,
  })async{

  }
}