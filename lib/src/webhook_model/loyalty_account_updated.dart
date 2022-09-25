// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'loyalty_account_updated.g.dart';

@JsonSerializable()
class LoyaltyAccountUpdatedEvent extends WebhookEvent {
  const LoyaltyAccountUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [LoyaltyAccountUpdatedEvent]
  factory LoyaltyAccountUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyAccountUpdatedEventFromJson(json);

  /// Converts a [LoyaltyAccountUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LoyaltyAccountUpdatedEventToJson(this);

  final LoyaltyAccountUpdatedWebhookData data;

  @override
  List<Object?> get props => [...super.props];
}

@JsonSerializable()
class LoyaltyAccountUpdatedWebhookData extends WebhookData {
  const LoyaltyAccountUpdatedWebhookData({
    required super.id,
    required this.object,
    required super.type,
  });

  /// Converts a [Map] to an [LoyaltyAccountUpdatedWebhookData]
  factory LoyaltyAccountUpdatedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyAccountUpdatedWebhookDataFromJson(json);

  /// Converts a [LoyaltyAccountUpdatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$LoyaltyAccountUpdatedWebhookDataToJson(this);

  final LoyaltyAccount object;

  @override
  List<Object?> get props => [...super.props, object];
}
