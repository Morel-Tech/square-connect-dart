// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'loyalty_program_created.g.dart';

@JsonSerializable()
class LoyaltyProgramCreatedEvent extends WebhookEvent {
  const LoyaltyProgramCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [LoyaltyProgramCreatedEvent]
  factory LoyaltyProgramCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramCreatedEventFromJson(json);

  /// Converts a [LoyaltyProgramCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LoyaltyProgramCreatedEventToJson(this);

  final LoyaltyProgramCreatedWebhookData data;

  @override
  List<Object> get props => [...super.props];
}

@JsonSerializable()
class LoyaltyProgramCreatedWebhookData extends Equatable {
  const LoyaltyProgramCreatedWebhookData({
    required this.id,
    required this.object,
    required this.type,
  });

  /// Converts a [Map] to an [LoyaltyProgramCreatedWebhookData]
  factory LoyaltyProgramCreatedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyProgramCreatedWebhookDataFromJson(json);

  /// Converts a [LoyaltyProgramCreatedWebhookData] to a [Map]
  Map<String, dynamic> toJson() =>
      _$LoyaltyProgramCreatedWebhookDataToJson(this);

  final String id;
  final LoyaltyProgramCreatedWebhookObject object;
  final String type;

  @override
  List<Object> get props => [id, object, type];
}

@JsonSerializable()
class LoyaltyProgramCreatedWebhookObject extends Equatable {
  const LoyaltyProgramCreatedWebhookObject({
    required this.loyaltyProgram,
  });

  /// Converts a [Map] to an [LoyaltyProgramCreatedWebhookObject]
  factory LoyaltyProgramCreatedWebhookObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyProgramCreatedWebhookObjectFromJson(json);

  /// Converts a [LoyaltyProgramCreatedWebhookObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$LoyaltyProgramCreatedWebhookObjectToJson(this);

  final LoyaltyProgram loyaltyProgram;

  @override
  List<Object> get props => [loyaltyProgram];
}
