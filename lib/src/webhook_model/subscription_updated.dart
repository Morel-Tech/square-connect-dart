import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'subscription_updated.g.dart';

@JsonSerializable()
class SubscriptionUpdatedEvent extends WebhookEvent {
  const SubscriptionUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [SubscriptionUpdatedEvent]
  factory SubscriptionUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionUpdatedEventFromJson(json);

  /// Converts a [SubscriptionUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$SubscriptionUpdatedEventToJson(this);

  final SubscriptionUpdatedWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class SubscriptionUpdatedWebhookData extends WebhookData {
  const SubscriptionUpdatedWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [SubscriptionUpdatedWebhookData]
  factory SubscriptionUpdatedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionUpdatedWebhookDataFromJson(json);

  /// Converts a [SubscriptionUpdatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$SubscriptionUpdatedWebhookDataToJson(this);

  final SubscriptionUpdatedSquareEventObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class SubscriptionUpdatedSquareEventObject extends Equatable {
  const SubscriptionUpdatedSquareEventObject({
    required this.subscription,
  });

  /// Converts a [Map] to an [SubscriptionUpdatedSquareEventObject]
  factory SubscriptionUpdatedSquareEventObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SubscriptionUpdatedSquareEventObjectFromJson(json);

  /// Converts a [SubscriptionUpdatedSquareEventObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$SubscriptionUpdatedSquareEventObjectToJson(this);

  final Subscription subscription;

  @override
  List<Object> get props => [subscription];
}
