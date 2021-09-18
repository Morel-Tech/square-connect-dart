// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceDetails _$DeviceDetailsFromJson(Map<String, dynamic> json) =>
    DeviceDetails(
      deviceId: json['deviceId'] as String?,
      deviceInstallationId: json['deviceInstallationId'] as String?,
      deviceName: json['deviceName'] as String?,
    );

Map<String, dynamic> _$DeviceDetailsToJson(DeviceDetails instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceInstallationId': instance.deviceInstallationId,
      'deviceName': instance.deviceName,
    };
