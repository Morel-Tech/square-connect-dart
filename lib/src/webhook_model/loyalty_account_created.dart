// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'loyalty_account_created.g.dart';

@JsonSerializable()
class LoyaltyAccountCreatedEvent extends WebhookEvent {
  const LoyaltyAccountCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [LoyaltyAccountCreatedEvent]
  factory LoyaltyAccountCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyAccountCreatedEventFromJson(json);

  /// Converts a [LoyaltyAccountCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LoyaltyAccountCreatedEventToJson(this);

  final LoyaltyAccountCreatedWebhookData data;

  @override
  List<Object?> get props => [...super.props];
}

@JsonSerializable()
class LoyaltyAccountCreatedWebhookData extends WebhookData {
  const LoyaltyAccountCreatedWebhookData({
    required super.id,
    required this.object,
    required super.type,
  });

  /// Converts a [Map] to an [LoyaltyAccountCreatedWebhookData]
  factory LoyaltyAccountCreatedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyAccountCreatedWebhookDataFromJson(json);

  /// Converts a [LoyaltyAccountCreatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$LoyaltyAccountCreatedWebhookDataToJson(this);

  final LoyaltyAccount object;

  @override
  List<Object?> get props => [...super.props, object];
}
