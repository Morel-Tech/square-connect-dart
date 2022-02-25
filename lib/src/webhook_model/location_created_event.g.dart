// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_created_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationCreatedEvent _$LocationCreatedEventFromJson(
        Map<String, dynamic> json) =>
    LocationCreatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: LocationCreatedEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationCreatedEventToJson(
        LocationCreatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

LocationCreatedEventData _$LocationCreatedEventDataFromJson(
        Map<String, dynamic> json) =>
    LocationCreatedEventData(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$LocationCreatedEventDataToJson(
        LocationCreatedEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
