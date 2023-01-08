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

Map<String, dynamic> _$OrderEntryToJson(OrderEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_id', instance.orderId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('version', instance.version);
  return val;
}
