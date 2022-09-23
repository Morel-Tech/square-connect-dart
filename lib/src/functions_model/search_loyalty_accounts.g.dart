// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_loyalty_accounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchLoyaltyAccountsRequest _$SearchLoyaltyAccountsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchLoyaltyAccountsRequest(
      query: json['query'] == null
          ? null
          : SearchLoyaltyAccountsRequestLoyaltyAccountQuery.fromJson(
              json['query'] as Map<String, dynamic>),
      limit: json['limit'] as int?,
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$SearchLoyaltyAccountsRequestToJson(
        SearchLoyaltyAccountsRequest instance) =>
    <String, dynamic>{
      'query': instance.query?.toJson(),
      'limit': instance.limit,
      'cursor': instance.cursor,
    };

SearchLoyaltyAccountsResponse _$SearchLoyaltyAccountsResponseFromJson(
        Map<String, dynamic> json) =>
    SearchLoyaltyAccountsResponse(
      loyaltyAccounts: (json['loyalty_accounts'] as List<dynamic>?)
          ?.map((e) => LoyaltyAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchLoyaltyAccountsResponseToJson(
        SearchLoyaltyAccountsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'loyalty_accounts':
          instance.loyaltyAccounts?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
    };
