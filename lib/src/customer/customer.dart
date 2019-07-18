import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/customer/customer-enums-converter.dart';
import 'package:square_connect/src/shared-enums-converter.dart';
import 'package:uuid/uuid.dart';

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
    String emailAddress,
    String phoneNumber,
    String referenceId,
    String note,
    DateTime birthday,
    Address address,
    String idempotencyKey,
  }) async {
    Map<String, dynamic> body = {};

    if (givenName != null) body['given_name'] = givenName;
    if (familyName != null) body['family_name'] = familyName;
    if (companyName != null) body['company_name'] = companyName;
    if (nickname != null) body['nickname'] = nickname;
    if (emailAddress != null) body['email_address'] = emailAddress;
    if (address != null) body['address'] = address.toJson();
    if (phoneNumber != null) body['phone_number'] = phoneNumber;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (note != null) body['note'] = note;
    if (birthday != null) body['birthday'] = birthday.toUtc().toIso8601String();
    if (idempotencyKey != null) body['idempotency_key'] = idempotencyKey;
    if (body['idempotency_key'] == null) body['idempotency_key'] = Uuid().v4();

    var obj = RequestObj(
      token: token,
      path: '/v2/customers',
      method: RequestMethod.post,
      client: client,
      body: body,
    );
    var response = await obj.makeCall();
    return CreateCustomerResponse.fromJson(json.decode(response.body));
  }

  Future<CreateCustomerCardResponse> createCustomerCard({
    @required String customerId,
    String cardNonce,
    Address billingAddress,
    String cardholderName,
    String verificationToken,
  }) async {
    Map<String, dynamic> body = {};

    if (cardNonce != null) body['card_nonce'] = cardNonce;
    if (billingAddress != null) body['billing_address'] = billingAddress;
    if (cardholderName != null) body['cardholder_name'] = cardholderName;
    if (verificationToken != null)
      body['verification_token'] = verificationToken;

    var obj = RequestObj(
      token: token,
      path: '/v2/customers/$customerId/cards',
      method: RequestMethod.post,
      client: client,
      body: body,
    );
    var response = await obj.makeCall();
    return CreateCustomerCardResponse.fromJson(json.decode(response.body));
  }

  Future<DeleteCustomerResponse> deleteCustomer(
      {@required String customerId}) async {
    if (customerId == null) throw ArgumentError('customerId must not be null');
    var obj = RequestObj(
      token: token,
      path: '/v2/customers/$customerId',
      method: RequestMethod.delete,
      client: client,
    );

    var response = await obj.makeCall();
    return DeleteCustomerResponse.fromJson(json.decode(response.body));
  }

  Future<DeleteCustomerCardResponse> deleteCustomerCard(
      {String customerId, String cardId}) async {
    if (customerId == null) throw ArgumentError('customerId must not be null');
    if (cardId == null) throw ArgumentError('cardId must not be null');
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
  }) async {
    List<QueryParam> queryParams = [];
    if (sortOrder != null)
      queryParams
          .add(QueryParam('sort_order', getStringFromSortOrder(sortOrder)));
    if (sortField != null)
      queryParams.add(
          QueryParam('sort_field', getStringFromCustomerSortField(sortField)));

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
    if (limit != null) body['limit'] = limit;

    body['query'] = Map<String, dynamic>();
    if (createdAtStart != null ||
        createdAtEnd != null ||
        updatedAtStart != null ||
        updatedAtEnd != null ||
        creationSource != null)
      body['query']['filter'] = Map<String, dynamic>();
    if (createdAtStart != null || createdAtEnd != null)
      body['query']['filter']['created_at'] = Map<String, dynamic>();
    if (updatedAtStart != null || updatedAtEnd != null)
      body['query']['filter']['updated_at'] = Map<String, dynamic>();

    if (createdAtStart != null)
      body['query']['filter']['created_at']['start_at'] =
          createdAtStart.toUtc().toIso8601String();
    if (createdAtEnd != null)
      body['query']['filter']['created_at']['end_at'] =
          createdAtEnd.toUtc().toIso8601String();
    if (updatedAtStart != null)
      body['query']['filter']['updated_at']['start_at'] =
          updatedAtStart.toUtc().toIso8601String();
    if (updatedAtEnd != null)
      body['query']['filter']['updated_at']['end_at'] =
          updatedAtEnd.toUtc().toIso8601String();
    if (creationSource != null)
      body['query']['filter']['creation_source'] =
          getStringFromCustomerCreationSource(creationSource);

    if (sortField != null || sortOrder != null)
      body['query']['sort'] = Map<String, dynamic>();

    if (sortField != null)
      body['query']['sort']['field'] =
          getStringFromCustomerSortField(sortField);
    if (sortOrder != null)
      body['query']['sort']['order'] = getStringFromSortOrder(sortOrder);

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
  }) async {
    Map<String, dynamic> body = {};

    if (givenName != null) body['given_name'] = givenName;
    if (familyName != null) body['family_name'] = familyName;
    if (companyName != null) body['company_name'] = companyName;
    if (nickname != null) body['nickname'] = nickname;
    if (emailAddress != null) body['email_address'] = emailAddress;
    if (address != null) body['address'] = address.toJson();
    if (phoneNumber != null) body['phone_number'] = phoneNumber;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (note != null) body['note'] = note;
    if (birthday != null) body['birthday'] = birthday.toUtc().toIso8601String();

    var obj = RequestObj(
      token: token,
      path: '/v2/customers/$customerId',
      method: RequestMethod.put,
      client: client,
      body: body,
    );
    var response = await obj.makeCall();
    return UpdateCustomerResponse.fromJson(json.decode(response.body));
  }
}
