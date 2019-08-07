import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/super-classes.dart';

/// The response to the `createCustomer()` method in [CustomersApi].
class CreateCustomerResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly created [Customer].
  final Customer customer;

  CreateCustomerResponse({this.errors, this.customer})
      : assert(xor(errors == null, customer == null));

  factory CreateCustomerResponse.fromJson(Map<String, dynamic> json) {
    return CreateCustomerResponse(
        errors: json['errors'] != null
            ? (json['errors'] as List)
                .map((error) => SquareError.fromJson(error))
                .toList()
            : null,
        customer: json['customer'] != null
            ? Customer.fromJson(json['customer'])
            : null);
  }
}

/// The response to the `createCustomerCard()` method in [CustomersApi].
class CreateCustomerCardResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly created [Card].
  final Card card;

  CreateCustomerCardResponse({this.errors, this.card})
      : assert(xor(errors == null, card == null));

  factory CreateCustomerCardResponse.fromJson(Map<String, dynamic> json) {
    return CreateCustomerCardResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      card: json['card'] != null ? Card.fromJson(json['card']) : null,
    );
  }
}

/// The response to the `deleteCustomer()` method in [CustomersApi].
class DeleteCustomerResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  DeleteCustomerResponse({
    this.errors,
  });

  factory DeleteCustomerResponse.fromJson(Map<String, dynamic> json) {
    return DeleteCustomerResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
    );
  }
}

/// The response to the `createCustomerCard()` method in [CustomersApi].
class DeleteCustomerCardResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  DeleteCustomerCardResponse({
    this.errors,
  });

  factory DeleteCustomerCardResponse.fromJson(Map<String, dynamic> json) {
    return DeleteCustomerCardResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
    );
  }
}

/// The response to the `listCustomers()` method in [CustomersApi].
class ListCustomersResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The list of returned [Customer]s.
  final List<Customer> customers;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListCustomersResponse({
    this.errors,
    this.customers,
    this.cursor,
  }) : assert(xor(errors == null, customers == null));

  factory ListCustomersResponse.fromJson(Map<String, dynamic> json) {
    return ListCustomersResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      customers: json['customers'] != null
          ? (json['customers'] as List)
              .map((item) => Customer.fromJson(item))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }
}

/// The response to the `retrieveCustomer()` method in [CustomersApi].
class RetrieveCustomerResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [Customer].
  final Customer customer;

  RetrieveCustomerResponse({this.errors, this.customer})
      : assert(xor(errors == null, customer == null));

  factory RetrieveCustomerResponse.fromJson(Map<String, dynamic> json) {
    return RetrieveCustomerResponse(
        errors: json['errors'] != null
            ? (json['errors'] as List)
                .map((error) => SquareError.fromJson(error))
                .toList()
            : null,
        customer: json['customer'] != null
            ? Customer.fromJson(json['customer'])
            : null);
  }
}

/// The response to the `searchCustomers()` method in [CustomersApi].
class SearchCustomersResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The list of [Customer]s returned by the call.
  final List<Customer> customers;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  SearchCustomersResponse({
    this.errors,
    this.customers,
    this.cursor,
  }) : assert(xor(errors == null, customers == null));

  factory SearchCustomersResponse.fromJson(Map<String, dynamic> json) {
    return SearchCustomersResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      customers: json['customers'] != null
          ? (json['customers'] as List)
              .map((item) => Customer.fromJson(item))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }
}

/// The response to the `updateCustomer()` method in [CustomersApi].
class UpdateCustomerResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The updated [Customer] object.
  final Customer customer;

  UpdateCustomerResponse({this.errors, this.customer})
      : assert(xor(errors == null, customer == null));

  factory UpdateCustomerResponse.fromJson(Map<String, dynamic> json) {
    return UpdateCustomerResponse(
        errors: json['errors'] != null
            ? (json['errors'] as List)
                .map((error) => SquareError.fromJson(error))
                .toList()
            : null,
        customer: json['customer'] != null
            ? Customer.fromJson(json['customer'])
            : null);
  }
}
