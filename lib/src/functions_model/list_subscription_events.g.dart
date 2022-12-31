// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_subscription_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListSubscriptionEventsResponse _$ListSubscriptionEventsResponseFromJson(
        Map<String, dynamic> json) =>
    ListSubscriptionEventsResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptionEvents: (json['subscription_events'] as List<dynamic>?)
          ?.map((e) => SubscriptionEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$ListSubscriptionEventsResponseToJson(
        ListSubscriptionEventsResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'subscription_events':
          instance.subscriptionEvents?.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
    };
