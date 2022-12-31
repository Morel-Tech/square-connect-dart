import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_subscriptions.g.dart';

@JsonSerializable()
class SearchSubscriptionsRequest extends Equatable {
  const SearchSubscriptionsRequest({
    this.cursor,
    this.limit,
    this.query,
    this.include,
  });

  /// Converts a [Map] to an [SearchSubscriptionsRequest]
  factory SearchSubscriptionsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchSubscriptionsRequestFromJson(json);

  /// Converts a [SearchSubscriptionsRequest] to a [Map]
  Map<String, dynamic> toJson() => _$SearchSubscriptionsRequestToJson(this);

  /// When the total number of resulting subscriptions exceeds the limit of a
  /// paged response, specify the cursor returned from a preceding response
  /// here to fetch the next set of results. If the cursor is unset, the
  /// response contains the last page of the results.
  final String? cursor;

  /// The upper limit on the number of subscriptions to return in a paged
  /// response.
  final int? limit;

  /// A subscription query consisting of specified filtering conditions.
  ///
  /// If this query field is unspecified, the SearchSubscriptions call will
  /// return all subscriptions.
  final SearchSubscriptionsQuery? query;

  /// An option to include related information in the response.
  ///
  /// The supported values are:
  /// - `actions`: to include scheduled actions on the targeted subscriptions.
  final List<String>? include;

  @override
  List<Object?> get props => [cursor, limit, query, include];
}

@JsonSerializable()
class SearchSubscriptionsResponse extends SquareResponse {
  const SearchSubscriptionsResponse({
    this.cursor,
    this.subscriptions,
    super.errors,
  });

  /// Converts a [Map] to an [SearchSubscriptionsResponse]
  factory SearchSubscriptionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchSubscriptionsResponseFromJson(json);

  /// Converts a [SearchSubscriptionsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SearchSubscriptionsResponseToJson(this);

  /// When the total number of resulting subscription exceeds the limit of a
  /// paged response, the response includes a cursor for you to use in a
  /// subsequent request to fetch the next set of results. If the cursor is
  /// unset, the response contains the last page of the results.
  final String? cursor;

  /// The subscriptions matching the specified query expressions.
  final List<Subscription>? subscriptions;

  @override
  List<Object?> get props => [
        errors,
        cursor,
        subscriptions,
      ];
}
