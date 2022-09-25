import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'customer_updated.g.dart';

@JsonSerializable()
class CustomerUpdatedEvent extends WebhookEvent {
  const CustomerUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [CustomerUpdatedEvent]
  factory CustomerUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$CustomerUpdatedEventFromJson(json);

  /// Converts a [CustomerUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CustomerUpdatedEventToJson(this);

  final CustomerUpdatedWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class CustomerUpdatedWebhookData extends WebhookData {
  const CustomerUpdatedWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [CustomerUpdatedWebhookData]
  factory CustomerUpdatedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$CustomerUpdatedWebhookDataFromJson(json);

  /// Converts a [CustomerUpdatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CustomerUpdatedWebhookDataToJson(this);

  final CustomerUpdatedWebhookObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class CustomerUpdatedWebhookObject extends Equatable {
  const CustomerUpdatedWebhookObject({
    required this.customer,
  });

  /// Converts a [Map] to an [CustomerUpdatedWebhookObject]
  factory CustomerUpdatedWebhookObject.fromJson(Map<String, dynamic> json) =>
      _$CustomerUpdatedWebhookObjectFromJson(json);

  /// Converts a [CustomerUpdatedWebhookObject] to a [Map]
  Map<String, dynamic> toJson() => _$CustomerUpdatedWebhookObjectToJson(this);

  final Customer customer;

  @override
  List<Object?> get props => [customer];
}
