import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'card_forgotten.g.dart';

@JsonSerializable()
class CardForgottenEvent extends WebhookEvent {
  const CardForgottenEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [CardForgottenEvent]
  factory CardForgottenEvent.fromJson(Map<String, dynamic> json) =>
      _$CardForgottenEventFromJson(json);

  /// Converts a [CardForgottenEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardForgottenEventToJson(this);

  final CardForgottenWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class CardForgottenWebhookData extends WebhookData {
  const CardForgottenWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [CardForgottenWebhookData]
  factory CardForgottenWebhookData.fromJson(Map<String, dynamic> json) =>
      _$CardForgottenWebhookDataFromJson(json);

  /// Converts a [CardForgottenWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CardForgottenWebhookDataToJson(this);

  final CardForgottenWebhookObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class CardForgottenWebhookObject extends Equatable {
  const CardForgottenWebhookObject({
    required this.card,
  });

  /// Converts a [Map] to an [CardForgottenWebhookObject]
  factory CardForgottenWebhookObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CardForgottenWebhookObjectFromJson(json);

  /// Converts a [CardForgottenWebhookObject] to a [Map]
  Map<String, dynamic> toJson() => _$CardForgottenWebhookObjectToJson(this);

  final Card card;

  @override
  List<Object?> get props => [card];
}
