// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_fulfillment_pickup_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderFulfillmentPickupDetails _$OrderFulfillmentPickupDetailsFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentPickupDetails(
      recipient: json['recipient'] == null
          ? null
          : OrderFulfillmentRecipient.fromJson(
              json['recipient'] as Map<String, dynamic>),
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      autoCompleteDuration: json['auto_complete_duration'] as String?,
      scheduleType: $enumDecodeNullable(
          _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap,
          json['schedule_type']),
      pickupAt: json['pickup_at'] == null
          ? null
          : DateTime.parse(json['pickup_at'] as String),
      pickupWindowDuration: json['pickup_window_duration'] as String?,
      prepTimeDuration: json['prep_time_duration'] as String?,
      note: json['note'] as String?,
      placedAt: json['placed_at'] == null
          ? null
          : DateTime.parse(json['placed_at'] as String),
      acceptedAt: json['accepted_at'] == null
          ? null
          : DateTime.parse(json['accepted_at'] as String),
      rejectedAt: json['rejected_at'] == null
          ? null
          : DateTime.parse(json['rejected_at'] as String),
      readyAt: json['ready_at'] == null
          ? null
          : DateTime.parse(json['ready_at'] as String),
      expiredAt: json['expired_at'] == null
          ? null
          : DateTime.parse(json['expired_at'] as String),
      pickedUpAt: json['picked_up_at'] == null
          ? null
          : DateTime.parse(json['picked_up_at'] as String),
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      cancelReason: json['cancel_reason'] as String?,
      curbsidePickupDetails: json['curbside_pickup_details'] == null
          ? null
          : OrderFulfillmentPickupDetailsCurbsidePickupDetails.fromJson(
              json['curbside_pickup_details'] as Map<String, dynamic>),
      isCurbsidePickup: json['is_curbside_pickup'] as bool?,
    );

Map<String, dynamic> _$OrderFulfillmentPickupDetailsToJson(
    OrderFulfillmentPickupDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recipient', instance.recipient?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toIso8601String());
  writeNotNull('auto_complete_duration', instance.autoCompleteDuration);
  writeNotNull(
      'schedule_type',
      _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap[
          instance.scheduleType]);
  writeNotNull('pickup_at', instance.pickupAt?.toIso8601String());
  writeNotNull('pickup_window_duration', instance.pickupWindowDuration);
  writeNotNull('prep_time_duration', instance.prepTimeDuration);
  writeNotNull('note', instance.note);
  writeNotNull('placed_at', instance.placedAt?.toIso8601String());
  writeNotNull('accepted_at', instance.acceptedAt?.toIso8601String());
  writeNotNull('rejected_at', instance.rejectedAt?.toIso8601String());
  writeNotNull('ready_at', instance.readyAt?.toIso8601String());
  writeNotNull('expired_at', instance.expiredAt?.toIso8601String());
  writeNotNull('picked_up_at', instance.pickedUpAt?.toIso8601String());
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('cancel_reason', instance.cancelReason);
  writeNotNull('is_curbside_pickup', instance.isCurbsidePickup);
  writeNotNull(
      'curbside_pickup_details', instance.curbsidePickupDetails?.toJson());
  return val;
}

const _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap = {
  OrderFulfillmentPickupDetailsScheduleType.scheduled: 'SCHEDULED',
  OrderFulfillmentPickupDetailsScheduleType.asap: 'ASAP',
};
