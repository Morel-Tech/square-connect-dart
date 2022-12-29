// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_fulfillment_shipment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderFulfillmentShipmentDetails _$OrderFulfillmentShipmentDetailsFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentShipmentDetails(
      cancelReason: json['cancel_reason'] as String?,
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      carrier: json['carrier'] as String?,
      expectedShippedAt: json['expected_shipped_at'] == null
          ? null
          : DateTime.parse(json['expected_shipped_at'] as String),
      failedAt: json['failed_at'] == null
          ? null
          : DateTime.parse(json['failed_at'] as String),
      failureReason: json['failure_reason'] == null
          ? null
          : DateTime.parse(json['failure_reason'] as String),
      inProgressAt: json['in_progress_at'] == null
          ? null
          : DateTime.parse(json['in_progress_at'] as String),
      packagedAt: json['packaged_at'] == null
          ? null
          : DateTime.parse(json['packaged_at'] as String),
      placedAt: json['placed_at'] == null
          ? null
          : DateTime.parse(json['placed_at'] as String),
      recipient: json['recipient'] == null
          ? null
          : OrderFulfillmentRecipient.fromJson(
              json['recipient'] as Map<String, dynamic>),
      shippedAt: json['shipped_at'] == null
          ? null
          : DateTime.parse(json['shipped_at'] as String),
      shippingNote: json['shipping_note'] as String?,
      shippingType: json['shipping_type'] as String?,
      trackingNumber: json['tracking_number'] as String?,
      trackingUrl: json['tracking_url'] as String?,
    );

Map<String, dynamic> _$OrderFulfillmentShipmentDetailsToJson(
        OrderFulfillmentShipmentDetails instance) =>
    <String, dynamic>{
      'cancel_reason': instance.cancelReason,
      'canceled_at': instance.canceledAt?.toIso8601String(),
      'carrier': instance.carrier,
      'expected_shipped_at': instance.expectedShippedAt?.toIso8601String(),
      'failed_at': instance.failedAt?.toIso8601String(),
      'failure_reason': instance.failureReason?.toIso8601String(),
      'in_progress_at': instance.inProgressAt?.toIso8601String(),
      'packaged_at': instance.packagedAt?.toIso8601String(),
      'placed_at': instance.placedAt?.toIso8601String(),
      'recipient': instance.recipient?.toJson(),
      'shipped_at': instance.shippedAt?.toIso8601String(),
      'shipping_note': instance.shippingNote,
      'shipping_type': instance.shippingType,
      'tracking_number': instance.trackingNumber,
      'tracking_url': instance.trackingUrl,
    };
