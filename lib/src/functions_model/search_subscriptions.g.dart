// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_subscriptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSubscriptionsRequest _$SearchSubscriptionsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsRequest(
      cursor: json['cursor'] as String?,
      limit: json['limit'] as int?,
      query: json['query'] == null
          ? null
          : SearchSubscriptionsQuery.fromJson(
              json['query'] as Map<String, dynamic>),
      include:
          (json['include'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SearchSubscriptionsRequestToJson(
        SearchSubscriptionsRequest instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'limit': instance.limit,
      'query': instance.query?.toJson(),
      'include': instance.include,
    };

SearchSubscriptionsResponse _$SearchSubscriptionsResponseFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsResponse(
      cursor: json['cursor'] as String?,
      subscriptions: (json['subscriptions'] as List<dynamic>?)
          ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchSubscriptionsResponseToJson(
        SearchSubscriptionsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
      'subscriptions': instance.subscriptions?.map((e) => e.toJson()).toList(),
    };
