// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCustomersRequest _$SearchCustomersRequestFromJson(
        Map<String, dynamic> json) =>
    SearchCustomersRequest(
      cursor: json['cursor'] as String?,
      limit: json['limit'] as int?,
      query: CustomerQuery.fromJson(json['query'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchCustomersRequestToJson(
        SearchCustomersRequest instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'limit': instance.limit,
      'query': instance.query.toJson(),
    };

SearchCustomersResponse _$SearchCustomersResponseFromJson(
        Map<String, dynamic> json) =>
    SearchCustomersResponse(
      cursor: json['cursor'] as String?,
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchCustomersResponseToJson(
        SearchCustomersResponse instance) =>
    <String, dynamic>{
      'customers': instance.customers?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
    };
