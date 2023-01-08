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
    ListSubscriptionEventsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('subscription_events',
      instance.subscriptionEvents?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
