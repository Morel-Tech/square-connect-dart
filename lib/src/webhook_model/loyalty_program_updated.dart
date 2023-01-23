import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'loyalty_program_updated.g.dart';

@JsonSerializable()
class LoyaltyProgramUpdatedEvent extends WebhookEvent {
  const LoyaltyProgramUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
  });

  /// Converts a [Map] to an [LoyaltyProgramUpdatedEvent]
  factory LoyaltyProgramUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramUpdatedEventFromJson(json);

  /// Converts a [LoyaltyProgramUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LoyaltyProgramUpdatedEventToJson(this);

  @override
  List<Object?> get props => [...super.props];
}

@JsonSerializable()
class LoyaltyProgramUpdatedWebhookData extends WebhookData {
  const LoyaltyProgramUpdatedWebhookData({
    required super.id,
    required this.object,
    required super.type,
  });

  /// Converts a [Map] to an [LoyaltyProgramUpdatedWebhookData]
  factory LoyaltyProgramUpdatedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyProgramUpdatedWebhookDataFromJson(json);

  /// Converts a [LoyaltyProgramUpdatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$LoyaltyProgramUpdatedWebhookDataToJson(this);

  final LoyaltyProgram object;

  @override
  List<Object?> get props => [...super.props, object];
}
