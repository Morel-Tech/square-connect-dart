// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_loyalty_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchLoyaltyEventsRequest _$SearchLoyaltyEventsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchLoyaltyEventsRequest(
      query: json['query'] == null
          ? null
          : LoyaltyEventQuery.fromJson(json['query'] as Map<String, dynamic>),
      limit: json['limit'] as int?,
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$SearchLoyaltyEventsRequestToJson(
        SearchLoyaltyEventsRequest instance) =>
    <String, dynamic>{
      'query': instance.query?.toJson(),
      'limit': instance.limit,
      'cursor': instance.cursor,
    };

SearchLoyaltyEventsResponse _$SearchLoyaltyEventsResponseFromJson(
        Map<String, dynamic> json) =>
    SearchLoyaltyEventsResponse(
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => LoyaltyEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchLoyaltyEventsResponseToJson(
        SearchLoyaltyEventsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'events': instance.events?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
    };
