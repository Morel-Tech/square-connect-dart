import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'customer_deleted.g.dart';

@JsonSerializable()
class CustomerDeletedEvent extends WebhookEvent {
  const CustomerDeletedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [CustomerDeletedEvent]
  factory CustomerDeletedEvent.fromJson(Map<String, dynamic> json) =>
      _$CustomerDeletedEventFromJson(json);

  /// Converts a [CustomerDeletedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CustomerDeletedEventToJson(this);

  final CustomerDeletedWebhookData data;

  @override
  List<Object> get props => [...super.props, data];
}

@JsonSerializable()
class CustomerDeletedWebhookData extends Equatable {
  const CustomerDeletedWebhookData({
    required this.id,
    required this.type,
    required this.object,
  });

  /// Converts a [Map] to an [CustomerDeletedWebhookData]
  factory CustomerDeletedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDeletedWebhookDataFromJson(json);

  /// Converts a [CustomerDeletedWebhookData] to a [Map]
  Map<String, dynamic> toJson() => _$CustomerDeletedWebhookDataToJson(this);

  /// The ID of the deleted customer.
  final String id;

  final String type;

  final CustomerDeletedWebhookObject object;

  @override
  List<Object> get props => [id, type, object];
}

@JsonSerializable()
class CustomerDeletedWebhookObject extends Equatable {
  const CustomerDeletedWebhookObject({
    required this.customer,
    this.eventContext,
  });

  /// Converts a [Map] to an [CustomerDeletedWebhookObject]
  factory CustomerDeletedWebhookObject.fromJson(Map<String, dynamic> json) =>
      _$CustomerDeletedWebhookObjectFromJson(json);

  /// Converts a [CustomerDeletedWebhookObject] to a [Map]
  Map<String, dynamic> toJson() => _$CustomerDeletedWebhookObjectToJson(this);

  final Customer customer;
  final CustomerDeletedWebhookEventContext? eventContext;

  @override
  List<Object?> get props => [customer, eventContext];
}

@JsonSerializable()
class CustomerDeletedWebhookEventContext extends Equatable {
  const CustomerDeletedWebhookEventContext({
    this.merge,
  });

  /// Converts a [Map] to an [CustomerDeletedWebhookEventContext]
  factory CustomerDeletedWebhookEventContext.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CustomerDeletedWebhookEventContextFromJson(json);

  /// Converts a [CustomerDeletedWebhookEventContext] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CustomerDeletedWebhookEventContextToJson(this);

  final CustomerDeletedWebhookEventContextMerge? merge;

  @override
  List<Object?> get props => [merge];
}

@JsonSerializable()
class CustomerDeletedWebhookEventContextMerge extends Equatable {
  const CustomerDeletedWebhookEventContextMerge({
    this.fromCustomerIds,
    this.toCustomerId,
  });

  /// Converts a [Map] to an [CustomerDeletedWebhookEventContextMerge]
  factory CustomerDeletedWebhookEventContextMerge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CustomerDeletedWebhookEventContextMergeFromJson(json);

  /// Converts a [CustomerDeletedWebhookEventContextMerge] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CustomerDeletedWebhookEventContextMergeToJson(this);

  /// The IDs of the existing customers that were merged and then deleted.
  final List<String>? fromCustomerIds;

  /// The ID of the new customer created by the merge.
  final String? toCustomerId;

  @override
  List<Object?> get props => [fromCustomerIds, toCustomerId];
}
