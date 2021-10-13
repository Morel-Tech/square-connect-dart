import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_fulfillment.g.dart';

@JsonSerializable()
class OrderFulfillment extends Equatable {
  const OrderFulfillment({
    required this.type,
    required this.state,
    this.pickupDetails,
    this.shipmentDetails,
    this.uid,
    this.metadata,
  });

  /// Converts a [Map] to an [OrderFulfillment]
  factory OrderFulfillment.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentFromJson(json);

  /// Converts a [OrderFulfillment] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentToJson(this);

  final OrderFulfillmentType type;
  final OrderFulfillmentState state;
  final OrderFulfillmentPickupDetails? pickupDetails;
  final OrderFulfillmentShipmentDetails? shipmentDetails;
  final String? uid;
  final Map<String, String>? metadata;

  @override
  List<Object?> get props {
    return [
      type,
      state,
      pickupDetails,
      shipmentDetails,
      uid,
      metadata,
    ];
  }
}
