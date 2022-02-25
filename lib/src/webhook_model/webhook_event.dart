import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'webhook_event.g.dart';

@JsonSerializable()
class WebhookEvent extends Equatable {
  const WebhookEvent({
    required this.merchantId,
    required this.type,
    required this.eventId,
    required this.createdAt,
  });

  /// Converts a [Map] to an [WebhookEvent]
  factory WebhookEvent.fromJson(Map<String, dynamic> json) =>
      _$WebhookEventFromJson(json);

  /// Converts a [WebhookEvent] to a [Map]
  Map<String, dynamic> toJson() => _$WebhookEventToJson(this);

  /// The ID of the target merchant associated with the event.
  final String merchantId;

  /// The type of event this represents.
  final String type;

  /// A unique ID for the webhook event.
  final String eventId;

  /// Timestamp of when the webhook event was created.
  final DateTime createdAt;

  @override
  List<Object> get props => [merchantId, type, eventId, createdAt];
}
