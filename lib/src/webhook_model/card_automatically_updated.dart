// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'card_automatically_updated.g.dart';

@JsonSerializable()
class CardAutomaticallyUpdatedEvent extends WebhookEvent {
  const CardAutomaticallyUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [CardAutomaticallyUpdatedEvent]
  factory CardAutomaticallyUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$CardAutomaticallyUpdatedEventFromJson(json);

  /// Converts a [CardAutomaticallyUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardAutomaticallyUpdatedEventToJson(this);

  final CardAutomaticallyUpdatedWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class CardAutomaticallyUpdatedWebhookData extends WebhookData {
  const CardAutomaticallyUpdatedWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [CardAutomaticallyUpdatedWebhookData]
  factory CardAutomaticallyUpdatedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CardAutomaticallyUpdatedWebhookDataFromJson(json);

  /// Converts a [CardAutomaticallyUpdatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$CardAutomaticallyUpdatedWebhookDataToJson(this);

  final Card object;

  @override
  List<Object?> get props => [...super.props, object];
}
