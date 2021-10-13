import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_fulfillment_pickup_details_curbside_pickup_details.g.dart';

@JsonSerializable()
class OrderFulfillmentPickupDetailsCurbsidePickupDetails extends Equatable {
  const OrderFulfillmentPickupDetailsCurbsidePickupDetails({
    this.buyerArrivedAt,
    this.curbsideDetails,
  });

  /// Converts a [Map] to an
  /// [OrderFulfillmentPickupDetailsCurbsidePickupDetails]
  factory OrderFulfillmentPickupDetailsCurbsidePickupDetails.fromJson(
          Map<String, dynamic> json) =>
      _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsFromJson(json);

  /// Converts a [OrderFulfillmentPickupDetailsCurbsidePickupDetails] to a [Map]
  Map<String, dynamic> toJson() =>
      _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsToJson(this);

  final DateTime? buyerArrivedAt;
  final String? curbsideDetails;

  @override
  List<Object?> get props => [buyerArrivedAt, curbsideDetails];
}
