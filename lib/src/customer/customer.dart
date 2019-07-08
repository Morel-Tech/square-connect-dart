import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';

class CustomerApi {
  final String token;
  final Client client;

  CustomerApi({this.token, this.client})
      : assert(token != null),
        assert(client != null);

  CreateCustomerResponse createCustomer({
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
  }) {
    
  }

  CreateCustomerCardResponse createCustomerCard({
    String cardNonce,
    Address billingAddress,
    String cardholderName,
    String verificationToken,
  }) {

  }

  DeleteCustomerResponse deleteCustomer({String customerId}){

  }

  DeleteCustomerCardResponse deleteCustomerCard({String customerId, String cardId}){

  }

  ListCustomersResponse listCustomers({
    String cursor,
    String sortField,
    SortOrder sortOrder,
  }){

  }

  RetrieveCustomerResponse retrieveCustomer({
    String customerId,
  }){

  }

  SearchCustomersResponse searchCustomers({
    String cursor,
    int limit,
    CustomerCreationSource source,
    DateTime createdAtStart,
    DateTime createdAtEnd,
    DateTime updatedAtStart,
    DateTime updatedAtEnd,
    CustomerSortField sortField,
    SortOrder sortOrder,
  }){

  }

  UpdateCustomerResponse updateCustomer({
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
  }){

  }
}