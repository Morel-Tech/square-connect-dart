// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_fulfillment_pickup_details_curbside_pickup_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderFulfillmentPickupDetailsCurbsidePickupDetails
    _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsFromJson(
            Map<String, dynamic> json) =>
        OrderFulfillmentPickupDetailsCurbsidePickupDetails(
          buyerArrivedAt: json['buyer_arrived_at'] == null
              ? null
              : DateTime.parse(json['buyer_arrived_at'] as String),
          curbsideDetails: json['curbside_details'] as String?,
        );

Map<String, dynamic> _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsToJson(
        OrderFulfillmentPickupDetailsCurbsidePickupDetails instance) =>
    <String, dynamic>{
      'buyer_arrived_at': instance.buyerArrivedAt?.toIso8601String(),
      'curbside_details': instance.curbsideDetails,
    };
