import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_loyalty_accounts.g.dart';

@JsonSerializable()
class SearchLoyaltyAccountsRequest extends Equatable {
  const SearchLoyaltyAccountsRequest({
    this.query,
    this.limit,
    this.cursor,
  });

  /// Converts a [Map] to an [SearchLoyaltyAccountsRequest]
  factory SearchLoyaltyAccountsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyAccountsRequestFromJson(json);

  /// Converts a [SearchLoyaltyAccountsRequest] to a [Map]
  Map<String, dynamic> toJson() => _$SearchLoyaltyAccountsRequestToJson(this);

  final SearchLoyaltyAccountsRequestLoyaltyAccountQuery? query;
  final int? limit;
  final String? cursor;

  @override
  List<Object?> get props => [query, limit, cursor];
}

@JsonSerializable()
class SearchLoyaltyAccountsResponse extends SquareResponse {
  const SearchLoyaltyAccountsResponse({
    this.loyaltyAccounts,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [SearchLoyaltyAccountsResponse]
  factory SearchLoyaltyAccountsResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyAccountsResponseFromJson(json);

  /// Converts a [SearchLoyaltyAccountsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$SearchLoyaltyAccountsResponseToJson(this);

  final List<LoyaltyAccount>? loyaltyAccounts;
  final String? cursor;

  @override
  List<Object?> get props => [errors, loyaltyAccounts, cursor];
}
