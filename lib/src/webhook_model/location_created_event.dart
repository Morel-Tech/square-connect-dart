import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'location_created_event.g.dart';

@JsonSerializable()
class LocationCreatedEvent extends WebhookEvent {
  const LocationCreatedEvent({
    required String merchantId,
    required String type,
    required String eventId,
    required DateTime createdAt,
    required this.data,
  }) : super(
          merchantId: merchantId,
          type: type,
          eventId: eventId,
          createdAt: createdAt,
        );

  /// Converts a [Map] to an [LocationCreatedEvent]
  factory LocationCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$LocationCreatedEventFromJson(json);

  /// Converts a [LocationCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LocationCreatedEventToJson(this);

  final LocationCreatedEventData data;

  @override
  List<Object> get props => [super.props, data];
}

@JsonSerializable()
class LocationCreatedEventData extends Equatable {
  const LocationCreatedEventData({
    required this.id,
    required this.type,
  });

  /// Converts a [Map] to an [LocationCreatedEventData]
  factory LocationCreatedEventData.fromJson(Map<String, dynamic> json) =>
      _$LocationCreatedEventDataFromJson(json);

  /// Converts a [LocationCreatedEventData] to a [Map]
  Map<String, dynamic> toJson() => _$LocationCreatedEventDataToJson(this);

  /// ID of the updated Location.
  final String id;

  /// Name of the affected object’s type, "location".
  final String type;

  @override
  List<Object> get props => [id, type];
}
