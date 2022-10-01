import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'card_created.g.dart';

@JsonSerializable()
class CardCreatedEvent extends WebhookEvent {
  const CardCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [CardCreatedEvent]
  factory CardCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$CardCreatedEventFromJson(json);

  /// Converts a [CardCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardCreatedEventToJson(this);

  final CardCreatedWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class CardCreatedWebhookData extends WebhookData {
  const CardCreatedWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [CardCreatedWebhookData]
  factory CardCreatedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$CardCreatedWebhookDataFromJson(json);

  /// Converts a [CardCreatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardCreatedWebhookDataToJson(this);

  final Card object;

  @override
  List<Object?> get props => [...super.props, object];
}
