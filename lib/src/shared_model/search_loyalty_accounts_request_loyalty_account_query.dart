import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'search_loyalty_accounts_request_loyalty_account_query.g.dart';

@JsonSerializable()
class SearchLoyaltyAccountsRequestLoyaltyAccountQuery extends Equatable {
  const SearchLoyaltyAccountsRequestLoyaltyAccountQuery({
    this.customerIds,
    this.mappings,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  ///  [SearchLoyaltyAccountsRequestLoyaltyAccountQuery]
  factory SearchLoyaltyAccountsRequestLoyaltyAccountQuery.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchLoyaltyAccountsRequestLoyaltyAccountQueryFromJson(json);

  /// Converts a [SearchLoyaltyAccountsRequestLoyaltyAccountQuery] to a
  ///  [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$SearchLoyaltyAccountsRequestLoyaltyAccountQueryToJson(this);

  final List<String>? customerIds;
  final List<LoyaltyAccountMapping>? mappings;

  @override
  List<Object?> get props => [customerIds, mappings];
}
