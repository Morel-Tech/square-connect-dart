import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

class CreateCustomerResponse {
  final List<SquareError> errors;
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

class CreateCustomerCardResponse {
  final List<SquareError> errors;
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

class DeleteCustomerResponse {
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

class DeleteCustomerCardResponse {
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

class ListCustomersResponse {
  final List<SquareError> errors;
  final List<Customer> customers;
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

class RetrieveCustomerResponse {
  final List<SquareError> errors;
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

class SearchCustomersResponse {
  final List<SquareError> errors;
  final List<Customer> customers;
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

class UpdateCustomerResponse {
  final List<SquareError> errors;
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
