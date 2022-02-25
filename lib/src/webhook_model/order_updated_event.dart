import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_updated_event.g.dart';

@JsonSerializable()
class OrderUpdatedEvent extends WebhookEvent {
  const OrderUpdatedEvent({
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

  /// Converts a [Map] to an [OrderUpdatedEvent]
  factory OrderUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$OrderUpdatedEventFromJson(json);

  /// Converts a [OrderUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$OrderUpdatedEventToJson(this);

  /// Data associated with the event.
  final OrderUpdatedWebhookData data;

  @override
  List<Object> get props => [super.props, data];
}

@JsonSerializable()
class OrderUpdatedWebhookData extends Equatable {
  const OrderUpdatedWebhookData({
    required this.id,
    required this.object,
    required this.type,
  });

  /// Converts a [Map] to an [OrderUpdatedWebhookData]
  factory OrderUpdatedWebhookData.fromJson(Map<String, dynamic> json) =>
      _$OrderUpdatedWebhookDataFromJson(json);

  /// Converts a [OrderUpdatedWebhookData] to a [Map]
  Map<String, dynamic> toJson() => _$OrderUpdatedWebhookDataToJson(this);

  /// ID of the affected order.
  final String id;

  /// An object containing information about the updated Order.
  final OrderUpdatedObject object;

  /// Name of the affected object’s type, `"order"`.
  final String type;

  @override
  List<Object> get props => [id, object, type];
}

@JsonSerializable()
class OrderUpdatedObject extends Equatable {
  const OrderUpdatedObject({
    required this.orderUpdated,
  });

  /// Converts a [Map] to an [OrderUpdatedObject]
  factory OrderUpdatedObject.fromJson(Map<String, dynamic> json) =>
      _$OrderUpdatedObjectFromJson(json);

  /// Converts a [OrderUpdatedObject] to a [Map]
  Map<String, dynamic> toJson() => _$OrderUpdatedObjectToJson(this);

  /// Information about the updated order.
  final OrderUpdated orderUpdated;

  @override
  List<Object> get props => [orderUpdated];
}

@JsonSerializable()
class OrderUpdated extends Equatable {
  const OrderUpdated({
    required this.createdAt,
    required this.locationId,
    required this.orderId,
    required this.state,
    required this.version,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [OrderUpdated]
  factory OrderUpdated.fromJson(Map<String, dynamic> json) =>
      _$OrderUpdatedFromJson(json);

  /// Converts a [OrderUpdated] to a [Map]
  Map<String, dynamic> toJson() => _$OrderUpdatedToJson(this);

  /// The timestamp for when the order was created.
  final DateTime createdAt;

  /// The timestamp for when the order was last updated.
  final DateTime updatedAt;

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
  List<Object> get props {
    return [
      createdAt,
      updatedAt,
      locationId,
      orderId,
      state,
      version,
    ];
  }
}
