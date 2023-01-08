// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_loyalty_accounts_request_loyalty_account_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchLoyaltyAccountsRequestLoyaltyAccountQuery
    _$SearchLoyaltyAccountsRequestLoyaltyAccountQueryFromJson(
            Map<String, dynamic> json) =>
        SearchLoyaltyAccountsRequestLoyaltyAccountQuery(
          customerIds: (json['customer_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          mappings: (json['mappings'] as List<dynamic>?)
              ?.map((e) =>
                  LoyaltyAccountMapping.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$SearchLoyaltyAccountsRequestLoyaltyAccountQueryToJson(
    SearchLoyaltyAccountsRequestLoyaltyAccountQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_ids', instance.customerIds);
  writeNotNull('mappings', instance.mappings?.map((e) => e.toJson()).toList());
  return val;
}
