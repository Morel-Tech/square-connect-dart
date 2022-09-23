// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
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
  List<Object> get props => [...super.props];
}

@JsonSerializable()
class LoyaltyProgramUpdatedWebhookData extends Equatable {
  const LoyaltyProgramUpdatedWebhookData({
    required this.id,
    required this.object,
    required this.type,
  });

  /// Converts a [Map] to an [LoyaltyProgramUpdatedWebhookData]
  factory LoyaltyProgramUpdatedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyProgramUpdatedWebhookDataFromJson(json);

  /// Converts a [LoyaltyProgramUpdatedWebhookData] to a [Map]
  Map<String, dynamic> toJson() =>
      _$LoyaltyProgramUpdatedWebhookDataToJson(this);

  final String id;
  final LoyaltyProgram object;
  final String type;

  @override
  List<Object> get props => [id, object, type];
}
