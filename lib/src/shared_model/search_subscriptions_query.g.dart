// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_subscriptions_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSubscriptionsQuery _$SearchSubscriptionsQueryFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsQuery(
      filter: json['filter'] == null
          ? null
          : SearchSubscriptionsFilter.fromJson(
              json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchSubscriptionsQueryToJson(
        SearchSubscriptionsQuery instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
    };
