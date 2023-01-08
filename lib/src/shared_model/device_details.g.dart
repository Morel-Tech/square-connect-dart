// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceDetails _$DeviceDetailsFromJson(Map<String, dynamic> json) =>
    DeviceDetails(
      deviceId: json['device_id'] as String?,
      deviceInstallationId: json['device_installation_id'] as String?,
      deviceName: json['device_name'] as String?,
    );

Map<String, dynamic> _$DeviceDetailsToJson(DeviceDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('device_id', instance.deviceId);
  writeNotNull('device_installation_id', instance.deviceInstallationId);
  writeNotNull('device_name', instance.deviceName);
  return val;
}
