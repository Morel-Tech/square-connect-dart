import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'card_updated.g.dart';

@JsonSerializable()
class CardUpdatedEvent extends WebhookEvent {
  const CardUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [CardUpdatedEvent]
  factory CardUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$CardUpdatedEventFromJson(json);

  /// Converts a [CardUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardUpdatedEventToJson(this);

  final CardUpdatedWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class CardUpdatedWebhookData extends WebhookData {
  const CardUpdatedWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [CardUpdatedWebhookData]
  factory CardUpdatedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$CardUpdatedWebhookDataFromJson(json);

  /// Converts a [CardUpdatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardUpdatedWebhookDataToJson(this);

  final Card object;

  @override
  List<Object?> get props => [...super.props, object];
}
