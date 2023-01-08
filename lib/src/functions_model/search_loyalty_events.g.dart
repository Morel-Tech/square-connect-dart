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
    SearchLoyaltyEventsRequest instance) {
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
    SearchLoyaltyEventsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('events', instance.events?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
