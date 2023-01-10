import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_orders.g.dart';

@JsonSerializable()
class SearchOrdersRequest extends Equatable {
  const SearchOrdersRequest({
    this.locationIds,
    this.cursor,
    this.query,
    this.limit,
    this.returnEntries,
  });

  /// Converts a [Map] to an [SearchOrdersRequest]
  factory SearchOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersRequestFromJson(json);

  /// Converts a [SearchOrdersRequest] to a [Map]
  Map<String, dynamic> toJson() => _$SearchOrdersRequestToJson(this);

  /// The location IDs for the orders to query. All locations must belong
  /// to the same merchant.
  final List<String>? locationIds;

  /// A pagination cursor returned by a previous call to this endpoint.
  /// Provide this cursor to retrieve the next set of results for your
  /// original query.
  final String? cursor;

  /// Query conditions used to filter or sort the results. Note that when
  /// retrieving additional pages using a cursor, you must use the original
  /// query.
  final SearchOrdersQuery? query;

  /// The maximum number of results to be returned in a single page. It
  /// is possible to receive fewer results than the specified limit on a
  /// given page.
  final int? limit;

  /// A Boolean that controls the format of the search results. If `true`,
  /// `SearchOrders` returns `OrderEntry` objects. If `false`, `SearchOrders`
  /// returns complete order objects.
  final bool? returnEntries;

  @override
  List<Object?> get props => [locationIds, cursor, query, limit, returnEntries];
}

@JsonSerializable()
class SearchOrdersResponse extends SquareResponse {
  const SearchOrdersResponse({
    this.orderEntries,
    this.orders,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [SearchOrdersResponse]
  factory SearchOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersResponseFromJson(json);

  /// Converts a [SearchOrdersResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SearchOrdersResponseToJson(this);

  /// A list of `OrderEntries` that fit the query conditions. The list is
  /// populated only if `return_entries` is set to `true` in the request.
  final List<OrderEntry>? orderEntries;

  /// A list of `Order` objects that match the query conditions. The list
  /// is populated only if `return_entries` is set to `false` in the request.
  final List<Order>? orders;

  /// The pagination cursor to be used in a subsequent request.
  /// If unset, this is the final response.
  final String? cursor;

  @override
  List<Object?> get props => [errors, orderEntries, orders, cursor];
}
