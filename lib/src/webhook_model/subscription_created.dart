import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'subscription_created.g.dart';

@JsonSerializable()
class SubscriptionCreatedEvent extends WebhookEvent {
  const SubscriptionCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [SubscriptionCreatedEvent]
  factory SubscriptionCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCreatedEventFromJson(json);

  /// Converts a [SubscriptionCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$SubscriptionCreatedEventToJson(this);

  final SubscriptionCreatedWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class SubscriptionCreatedWebhookData extends WebhookData {
  const SubscriptionCreatedWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [SubscriptionCreatedWebhookData]
  factory SubscriptionCreatedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCreatedWebhookDataFromJson(json);

  /// Converts a [SubscriptionCreatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$SubscriptionCreatedWebhookDataToJson(this);

  final SubscriptionCreatedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class SubscriptionCreatedSquareEventObject extends Equatable {
  const SubscriptionCreatedSquareEventObject({
    required this.subscription,
  });

  /// Converts a [Map] to an [SubscriptionCreatedSquareEventObject]
  factory SubscriptionCreatedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SubscriptionCreatedSquareEventObjectFromJson(json);

  /// Converts a [SubscriptionCreatedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$SubscriptionCreatedSquareEventObjectToJson(this);

  final Subscription subscription;

  @override
  List<Object> get props => [subscription];
}
