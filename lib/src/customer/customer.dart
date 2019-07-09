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
    String customerId,
  }){

  }

  Future<SearchCustomersResponse> searchCustomers({
    String cursor,
    int limit,
    CustomerCreationSource source,
    DateTime createdAtStart,
    DateTime createdAtEnd,
    DateTime updatedAtStart,
    DateTime updatedAtEnd,
    CustomerSortField sortField,
    SortOrder sortOrder,
  })async{

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