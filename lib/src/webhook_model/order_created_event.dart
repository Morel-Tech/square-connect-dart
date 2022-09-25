import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_created_event.g.dart';

@JsonSerializable()
class OrderCreatedEvent extends WebhookEvent {
  const OrderCreatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [OrderCreatedEvent]
  factory OrderCreatedEvent.fromJson(Map<String, dynamic> json) =>
      _$OrderCreatedEventFromJson(json);

  /// Converts a [OrderCreatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$OrderCreatedEventToJson(this);

  /// Data associated with the event.
  final OrderCreatedWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class OrderCreatedWebhookData extends WebhookData {
  const OrderCreatedWebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

  /// Converts a [Map] to an [OrderCreatedWebhookData]
  factory OrderCreatedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$OrderCreatedWebhookDataFromJson(json);

  /// Converts a [OrderCreatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$OrderCreatedWebhookDataToJson(this);

  /// An object containing information about the created Order.
  final OrderCreatedObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class OrderCreatedObject extends Equatable {
  const OrderCreatedObject({
    required this.orderCreated,
  });

  /// Converts a [Map] to an [OrderCreatedObject]
  factory OrderCreatedObject.fromJson(Map<String, dynamic> json) =>
      _$OrderCreatedObjectFromJson(json);

  /// Converts a [OrderCreatedObject] to a [Map]
  Map<String, dynamic> toJson() => _$OrderCreatedObjectToJson(this);

  /// Information about the created order.
  final OrderCreated orderCreated;

  @override
  List<Object?> get props => [orderCreated];
}

@JsonSerializable()
class OrderCreated extends Equatable {
  const OrderCreated({
    required this.createdAt,
    required this.locationId,
    required this.orderId,
    required this.state,
    required this.version,
  });

  /// Converts a [Map] to an [OrderCreated]
  factory OrderCreated.fromJson(Map<String, dynamic> json) =>
      _$OrderCreatedFromJson(json);

  /// Converts a [OrderCreated] to a [Map]
  Map<String, dynamic> toJson() => _$OrderCreatedToJson(this);

  /// The timestamp for when the order was created.
  final DateTime createdAt;

  /// The ID of the seller location that this order is associated with.
  final String locationId;

  /// The order's unique ID.
  final String orderId;

  /// The state of the order.
  final OrderState state;

  /// The version number, which is incremented each time an update is committed
  /// to the order.
  final int version;

  @override
  List<Object?> get props {
    return [
      createdAt,
      locationId,
      orderId,
      state,
      version,
    ];
  }
}
