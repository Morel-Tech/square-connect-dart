// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'loyalty_account_deleted.g.dart';

@JsonSerializable()
class LoyaltyAccountDeletedEvent extends WebhookEvent {
  const LoyaltyAccountDeletedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [LoyaltyAccountDeletedEvent]
  factory LoyaltyAccountDeletedEvent.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyAccountDeletedEventFromJson(json);

  /// Converts a [LoyaltyAccountDeletedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$LoyaltyAccountDeletedEventToJson(this);

  final LoyaltyAccountDeletedWebhookData data;

  @override
  List<Object?> get props => [...super.props];
}

@JsonSerializable()
class LoyaltyAccountDeletedWebhookData extends WebhookData {
  const LoyaltyAccountDeletedWebhookData({
    required super.id,
    required this.object,
    required super.type,
  });

  /// Converts a [Map] to an [LoyaltyAccountDeletedWebhookData]
  factory LoyaltyAccountDeletedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyAccountDeletedWebhookDataFromJson(json);

  /// Converts a [LoyaltyAccountDeletedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$LoyaltyAccountDeletedWebhookDataToJson(this);

  final LoyaltyAccount object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class LoyaltyAccountDeletedWebhookDataObject extends Equatable {
  const LoyaltyAccountDeletedWebhookDataObject({
    required this.loyaltyAccount,
  });

  /// Converts a [Map] to an [LoyaltyAccountDeletedWebhookDataObject]
  factory LoyaltyAccountDeletedWebhookDataObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyAccountDeletedWebhookDataObjectFromJson(json);

  /// Converts a [LoyaltyAccountDeletedWebhookDataObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$LoyaltyAccountDeletedWebhookDataObjectToJson(this);

  final LoyaltyAccount loyaltyAccount;

  @override
  List<Object> get props => [loyaltyAccount];
}
