import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'location_created_event.g.dart';

@JsonSerializable()
class LocationCreatedEvent extends WebhookEvent {
  const LocationCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [LocationCreatedEvent]
  factory LocationCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$LocationCreatedEventFromJson(json);

  /// Converts a [LocationCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LocationCreatedEventToJson(this);

  final LocationCreatedEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class LocationCreatedEventData extends WebhookData {
  const LocationCreatedEventData({
    required super.id,
    required super.type,
  });

  /// Converts a [Map] to an [LocationCreatedEventData]
  factory LocationCreatedEventData.fromJson(Map<String, dynamic> json) =>
      _$LocationCreatedEventDataFromJson(json);

  /// Converts a [LocationCreatedEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LocationCreatedEventDataToJson(this);

  @override
  List<Object?> get props => [...super.props];
}
