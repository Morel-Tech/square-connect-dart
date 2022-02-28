import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'customer_created.g.dart';

@JsonSerializable()
class CustomerCreatedEvent extends WebhookEvent {
  const CustomerCreatedEvent({
    required String merchantId,
    required String type,
    required String eventId,
    required DateTime createdAt,
    required this.data,
  }) : super(
          merchantId: merchantId,
          type: type,
          eventId: eventId,
          createdAt: createdAt,
        );

  /// Converts a [Map] to an [CustomerCreatedEvent]
  factory CustomerCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$CustomerCreatedEventFromJson(json);

  /// Converts a [CustomerCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CustomerCreatedEventToJson(this);

  final CustomerCreatedWebhookData data;

  @override
  List<Object> get props => [super.props, data];
}

@JsonSerializable()
class CustomerCreatedWebhookData extends Equatable {
  const CustomerCreatedWebhookData({
    required this.id,
    required this.object,
    required this.type,
  });

  /// Converts a [Map] to an [CustomerCreatedWebhookData]
  factory CustomerCreatedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$CustomerCreatedWebhookDataFromJson(json);

  /// Converts a [CustomerCreatedWebhookData] to a [Map]
  Map<String, dynamic> toJson() => _$CustomerCreatedWebhookDataToJson(this);

  /// The ID of the new customer.
  final String id;

  final CustomerCreatedWebhookObject object;

  final String type;

  @override
  List<Object> get props => [id, type, object];
}

@JsonSerializable()
class CustomerCreatedWebhookObject extends Equatable {
  const CustomerCreatedWebhookObject({
    required this.customer,
    required this.eventContext,
  });

  /// Converts a [Map] to an [CustomerCreatedWebhookObject]
  factory CustomerCreatedWebhookObject.fromJson(Map<String, dynamic> json) =>
      _$CustomerCreatedWebhookObjectFromJson(json);

  /// Converts a [CustomerCreatedWebhookObject] to a [Map]
  Map<String, dynamic> toJson() => _$CustomerCreatedWebhookObjectToJson(this);

  final Customer customer;
  final CustomerCreatedWebhookEventContext eventContext;

  @override
  List<Object> get props => [customer, eventContext];
}

@JsonSerializable()
class CustomerCreatedWebhookEventContext extends Equatable {
  const CustomerCreatedWebhookEventContext({
    required this.merge,
  });

  /// Converts a [Map] to an [CustomerCreatedWebhookEventContext]
  factory CustomerCreatedWebhookEventContext.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CustomerCreatedWebhookEventContextFromJson(json);

  /// Converts a [CustomerCreatedWebhookEventContext] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CustomerCreatedWebhookEventContextToJson(this);

  final CustomerCreatedWebhookEventContextMerge merge;

  @override
  List<Object> get props => [merge];
}

@JsonSerializable()
class CustomerCreatedWebhookEventContextMerge extends Equatable {
  const CustomerCreatedWebhookEventContextMerge({
    required this.fromCustomerIds,
    required this.toCustomerId,
  });

  /// Converts a [Map] to an [CustomerCreatedWebhookEventContextMerge]
  factory CustomerCreatedWebhookEventContextMerge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CustomerCreatedWebhookEventContextMergeFromJson(json);

  /// Converts a [CustomerCreatedWebhookEventContextMerge] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CustomerCreatedWebhookEventContextMergeToJson(this);

  /// The IDs of the existing customers that were merged and then deleted.
  final List<String> fromCustomerIds;

  /// The ID of the new customer created by the merge.
  final String toCustomerId;

  @override
  List<Object> get props => [fromCustomerIds, toCustomerId];
}
