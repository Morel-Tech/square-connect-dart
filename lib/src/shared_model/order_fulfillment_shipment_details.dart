import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_fulfillment_shipment_details.g.dart';

@JsonSerializable()
class OrderFulfillmentShipmentDetails extends Equatable {
  const OrderFulfillmentShipmentDetails({
    this.cancelReason,
    this.canceledAt,
    this.carrier,
    this.expectedShippedAt,
    this.failedAt,
    this.failureReason,
    this.inProgressAt,
    this.packagedAt,
    this.placedAt,
    this.recipient,
    this.shippedAt,
    this.shippingNote,
    this.shippingType,
    this.trackingNumber,
    this.trackingUrl,
  });

  /// Converts a [Map] to an [OrderFulfillmentShipmentDetails]
  factory OrderFulfillmentShipmentDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentShipmentDetailsFromJson(json);

  /// Converts a [OrderFulfillmentShipmentDetails] to a [Map]
  Map<String, dynamic> toJson() =>
      _$OrderFulfillmentShipmentDetailsToJson(this);

  final String? cancelReason;
  final DateTime? canceledAt;
  final String? carrier;
  final DateTime? expectedShippedAt;
  final DateTime? failedAt;
  final DateTime? failureReason;
  final DateTime? inProgressAt;
  final DateTime? packagedAt;
  final DateTime? placedAt;
  final OrderFulfillmentRecipient? recipient;
  final DateTime? shippedAt;
  final String? shippingNote;
  final String? shippingType;
  final String? trackingNumber;
  final String? trackingUrl;

  @override
  List<Object?> get props {
    return [
      cancelReason,
      canceledAt,
      carrier,
      expectedShippedAt,
      failedAt,
      failureReason,
      inProgressAt,
      packagedAt,
      placedAt,
      recipient,
      shippedAt,
      shippingNote,
      shippingType,
      trackingNumber,
      trackingUrl,
    ];
  }
}
