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
