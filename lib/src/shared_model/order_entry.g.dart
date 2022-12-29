// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderEntry _$OrderEntryFromJson(Map<String, dynamic> json) => OrderEntry(
      orderId: json['order_id'] as String?,
      locationId: json['location_id'] as String?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$OrderEntryToJson(OrderEntry instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'location_id': instance.locationId,
      'version': instance.version,
    };
