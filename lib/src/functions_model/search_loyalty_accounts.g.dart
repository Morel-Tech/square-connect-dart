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
    SearchLoyaltyAccountsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('query', instance.query?.toJson());
  writeNotNull('limit', instance.limit);
  writeNotNull('cursor', instance.cursor);
  return val;
}

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
    SearchLoyaltyAccountsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('loyalty_accounts',
      instance.loyaltyAccounts?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
