import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_invoices.g.dart';

@JsonSerializable()
class SearchInvoicesRequest extends Equatable {
  const SearchInvoicesRequest({
    required this.query,
    this.limit,
    this.cursor,
  });

  /// Converts a [Map] to an [SearchInvoicesRequest]
  factory SearchInvoicesRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchInvoicesRequestFromJson(json);

  /// Converts a [SearchInvoicesRequest] to a [Map]
  Map<String, dynamic> toJson() => _$SearchInvoicesRequestToJson(this);

  /// Describes the query criteria for searching invoices.
  final InvoiceQuery query;

  /// The maximum number of invoices to return (200 is the maximum `limit`).
  /// If not provided, the server uses a default limit of 100 invoices.
  final int? limit;

  /// A pagination cursor returned by a previous call to this endpoint.
  /// Provide this cursor to retrieve the next set of results for your original
  /// query.
  final String? cursor;

  @override
  List<Object?> get props => [query, limit, cursor];
}

@JsonSerializable()
class SearchInvoicesResponse extends SquareResponse {
  const SearchInvoicesResponse({
    this.invoices,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [SearchInvoicesResponse]
  factory SearchInvoicesResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchInvoicesResponseFromJson(json);

  /// Converts a [SearchInvoicesResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SearchInvoicesResponseToJson(this);

  /// The list of invoices returned by the search.
  final List<Invoice>? invoices;

  /// When a response is truncated, it includes a cursor that you can use in a
  /// subsequent request to fetch the next set of invoices. If empty, this is
  /// the final response.
  final String? cursor;

  @override
  List<Object?> get props => [invoices, cursor, errors];
}
