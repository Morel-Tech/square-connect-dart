// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_subscriptions_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSubscriptionsFilter _$SearchSubscriptionsFilterFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsFilter(
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      locationIds: (json['location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sourceNames: (json['source_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SearchSubscriptionsFilterToJson(
        SearchSubscriptionsFilter instance) =>
    <String, dynamic>{
      'customer_ids': instance.customerIds,
      'location_ids': instance.locationIds,
      'source_names': instance.sourceNames,
    };
