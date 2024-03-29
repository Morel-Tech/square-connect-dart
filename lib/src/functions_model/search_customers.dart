import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_customers.g.dart';

@JsonSerializable()
class SearchCustomersRequest extends Equatable {
  const SearchCustomersRequest({
    required this.query,
    this.cursor,
    this.limit,
  });

  /// Converts a [Map] to an [SearchCustomersRequest]
  factory SearchCustomersRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchCustomersRequestFromJson(json);

  /// Converts a [SearchCustomersRequest] to a [Map]
  Map<String, dynamic> toJson() => _$SearchCustomersRequestToJson(this);

  /// Include the pagination cursor in subsequent calls to this endpoint to
  /// retrieve the next set of results associated with the original query.
  final String? cursor;

  /// The maximum number of results to return in a single page. This limit is
  /// advisory. The response might contain more or fewer results. The limit is
  /// ignored if it is less than the minimum or greater than the maximum value.
  /// The default value is 100.
  final int? limit;

  /// Query customers based on the given conditions and sort order. Calling
  /// SearchCustomers without an explicit query parameter returns all customers
  /// ordered alphabetically based on given_name and family_name.
  final CustomerQuery query;

  @override
  List<Object?> get props => [cursor, limit, query];
}

@JsonSerializable()
class SearchCustomersResponse extends SquareResponse {
  const SearchCustomersResponse({
    List<SquareError>? error,
    this.cursor,
    this.customers,
  }) : super(errors: error);

  /// Converts a [Map] to an [SearchCustomersResponse]
  factory SearchCustomersResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchCustomersResponseFromJson(json);

  /// Converts a [SearchCustomersResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SearchCustomersResponseToJson(this);

  final List<Customer>? customers;
  final String? cursor;

  @override
  List<Object?> get props => [customers, cursor, errors];
}
