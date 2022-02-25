// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_updated_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationUpdatedEvent _$LocationUpdatedEventFromJson(
        Map<String, dynamic> json) =>
    LocationUpdatedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: LocationUpdatedEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationUpdatedEventToJson(
        LocationUpdatedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

LocationUpdatedEventData _$LocationUpdatedEventDataFromJson(
        Map<String, dynamic> json) =>
    LocationUpdatedEventData(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$LocationUpdatedEventDataToJson(
        LocationUpdatedEventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
