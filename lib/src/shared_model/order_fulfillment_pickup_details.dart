import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_fulfillment_pickup_details.g.dart';

@JsonSerializable()
class OrderFulfillmentPickupDetails extends Equatable {
  const OrderFulfillmentPickupDetails({
    this.recipient,
    this.expiresAt,
    this.autoCompleteDuration,
    this.scheduleType,
    this.pickupAt,
    this.pickupWindowDuration,
    this.prepTimeDuration,
    this.note,
    this.placedAt,
    this.acceptedAt,
    this.rejectedAt,
    this.readyAt,
    this.expiredAt,
    this.pickedUpAt,
    this.canceledAt,
    this.cancelReason,
    this.curbsidePickupDetails,
    this.isCurbsidePickup,
  });

  /// Converts a [Map] to an [OrderFulfillmentPickupDetails]
  factory OrderFulfillmentPickupDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentPickupDetailsFromJson(json);

  /// Converts a [OrderFulfillmentPickupDetails] to a [Map]
  Map<String, dynamic> toJson() => _$OrderFulfillmentPickupDetailsToJson(this);

  final OrderFulfillmentRecipient? recipient;
  final DateTime? expiresAt;
  final String? autoCompleteDuration;
  final OrderFulfillmentPickupDetailsScheduleType? scheduleType;
  final DateTime? pickupAt;
  final String? pickupWindowDuration;
  final String? prepTimeDuration;
  final String? note;
  final DateTime? placedAt;
  final DateTime? acceptedAt;
  final DateTime? rejectedAt;
  final DateTime? readyAt;
  final DateTime? expiredAt;
  final DateTime? pickedUpAt;
  final DateTime? canceledAt;
  final String? cancelReason;
  final bool? isCurbsidePickup;
  final OrderFulfillmentPickupDetailsCurbsidePickupDetails?
      curbsidePickupDetails;

  @override
  List<Object?> get props {
    return [
      recipient,
      expiresAt,
      autoCompleteDuration,
      scheduleType,
      pickupAt,
      pickupWindowDuration,
      prepTimeDuration,
      note,
      placedAt,
      acceptedAt,
      rejectedAt,
      readyAt,
      expiredAt,
      pickedUpAt,
      canceledAt,
      cancelReason,
      isCurbsidePickup,
    ];
  }
}
