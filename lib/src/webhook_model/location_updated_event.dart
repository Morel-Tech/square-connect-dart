import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'location_updated_event.g.dart';

@JsonSerializable()
class LocationUpdatedEvent extends WebhookEvent {
  const LocationUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [LocationUpdatedEvent]
  factory LocationUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$LocationUpdatedEventFromJson(json);

  /// Converts a [LocationUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LocationUpdatedEventToJson(this);

  final LocationUpdatedEventData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class LocationUpdatedEventData extends WebhookData {
  const LocationUpdatedEventData({
    required super.id,
    required super.type,
  });

  /// Converts a [Map] to an [LocationUpdatedEventData]
  factory LocationUpdatedEventData.fromJson(Map<String, dynamic> json) =>
      _$LocationUpdatedEventDataFromJson(json);

  /// Converts a [LocationUpdatedEventData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LocationUpdatedEventDataToJson(this);

  @override
  List<Object?> get props => [...super.props];
}
