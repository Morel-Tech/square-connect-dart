import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'card_disabled.g.dart';

@JsonSerializable()
class CardDisabledEvent extends WebhookEvent {
  const CardDisabledEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [CardDisabledEvent]
  factory CardDisabledEvent.fromJson(Map<String, dynamic> json) =>
      _$CardDisabledEventFromJson(json);

  /// Converts a [CardDisabledEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardDisabledEventToJson(this);

  final CardDisabledWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class CardDisabledWebhookData extends WebhookData {
  const CardDisabledWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [CardDisabledWebhookData]
  factory CardDisabledWebhookData.fromJson(Map<String, dynamic> json) =>
      _$CardDisabledWebhookDataFromJson(json);

  /// Converts a [CardDisabledWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardDisabledWebhookDataToJson(this);

  final CardDisabledWebhookObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class CardDisabledWebhookObject extends Equatable {
  const CardDisabledWebhookObject({
    required this.card,
  });

  /// Converts a [Map] to an [CardDisabledWebhookObject]
  factory CardDisabledWebhookObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CardDisabledWebhookObjectFromJson(json);

  /// Converts a [CardDisabledWebhookObject] to a [Map]
  Map<String, dynamic> toJson() => _$CardDisabledWebhookObjectToJson(this);

  final Card card;

  @override
  List<Object?> get props => [card];
}
