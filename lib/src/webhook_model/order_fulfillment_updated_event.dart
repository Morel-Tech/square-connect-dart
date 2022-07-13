import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'order_fulfillment_updated_event.g.dart';

@JsonSerializable()
class OrderFulfillmentUpdatedEvent extends WebhookEvent {
  const OrderFulfillmentUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [OrderFulfillmentUpdatedEvent]
  factory OrderFulfillmentUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentUpdatedEventFromJson(json);

  /// Converts a [OrderFulfillmentUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$OrderFulfillmentUpdatedEventToJson(this);

  final OrderFulfillmentUpdatedWebhookData data;

  @override
  List<Object> get props => [super.props, data];
}

@JsonSerializable()
class OrderFulfillmentUpdatedWebhookData extends Equatable {
  const OrderFulfillmentUpdatedWebhookData({
    required this.id,
    required this.type,
    required this.object,
  });

  /// Converts a [Map] to an [OrderFulfillmentUpdatedWebhookData]
  factory OrderFulfillmentUpdatedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OrderFulfillmentUpdatedWebhookDataFromJson(json);

  /// Converts a [OrderFulfillmentUpdatedWebhookData] to a [Map]
  Map<String, dynamic> toJson() =>
      _$OrderFulfillmentUpdatedWebhookDataToJson(this);

  /// ID of the affected order.
  final String id;

  /// Name of the affected object’s type, `"order"`.
  final String type;

  /// An object containing information about the updated Order.
  final OrderFulfillmentUpdatedObject object;

  @override
  List<Object> get props => [id, type, object];
}

@JsonSerializable()
class OrderFulfillmentUpdatedObject extends Equatable {
  const OrderFulfillmentUpdatedObject({
    required this.orderFulfillmentUpdated,
  });

  /// Converts a [Map] to an [OrderFulfillmentUpdatedObject]
  factory OrderFulfillmentUpdatedObject.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentUpdatedObjectFromJson(json);

  /// Converts a [OrderFulfillmentUpdatedObject] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentUpdatedObjectToJson(this);

  /// Information about the updated order fulfillment.
  final OrderFulfillmentUpdated orderFulfillmentUpdated;

  @override
  List<Object> get props => [orderFulfillmentUpdated];
}

@JsonSerializable()
class OrderFulfillmentUpdated extends Equatable {
  const OrderFulfillmentUpdated({
    required this.createdAt,
    required this.fulfillmentUpdate,
    required this.locationId,
    required this.orderId,
    required this.state,
    required this.updatedAt,
    required this.version,
  });

  /// Converts a [Map] to an [OrderFulfillmentUpdated]
  factory OrderFulfillmentUpdated.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentUpdatedFromJson(json);

  /// Converts a [OrderFulfillmentUpdated] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentUpdatedToJson(this);

  /// The timestamp for when the order was created.
  final DateTime createdAt;

  /// The fulfillments that were updated with this version change.
  final List<OrderFulfillmentUpdatedUpdate> fulfillmentUpdate;

  /// The ID of the seller location that this order is associated with.
  final String locationId;

  /// The order's unique ID.
  final String orderId;

  /// The state of the order.
  final OrderState state;

  /// The timestamp for when the order was last updated.
  final DateTime updatedAt;

  /// The version number, which is incremented each time an update is committed
  /// to the order.
  final int version;

  @override
  List<Object> get props {
    return [
      createdAt,
      fulfillmentUpdate,
      locationId,
      orderId,
      state,
      updatedAt,
      version,
    ];
  }
}

@JsonSerializable()
class OrderFulfillmentUpdatedUpdate extends Equatable {
  const OrderFulfillmentUpdatedUpdate({
    required this.fulfillmentUid,
    required this.newState,
    required this.oldState,
  });

  /// Converts a [Map] to an [OrderFulfillmentUpdatedUpdate]
  factory OrderFulfillmentUpdatedUpdate.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentUpdatedUpdateFromJson(json);

  /// Converts a [OrderFulfillmentUpdatedUpdate] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentUpdatedUpdateToJson(this);

  /// A unique ID that identifies the fulfillment only within this order.
  final String fulfillmentUid;

  /// The state of the fulfillment after the change. The state might be equal to
  /// `old_state` if a non-state field was changed on the fulfillment (such as
  /// the tracking number).
  final OrderFulfillmentState newState;

  /// The state of the fulfillment before the change. The state is not populated
  ///  if the fulfillment is created with this new `Order` version.
  final OrderFulfillmentState oldState;

  @override
  List<Object> get props => [fulfillmentUid, newState, oldState];
}
