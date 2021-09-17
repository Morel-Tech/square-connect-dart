import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_details.g.dart';

/// {@template device_details}
/// Details about the device that took the payment.
/// {@endtemplate}
@JsonSerializable()
class DeviceDetails extends Equatable {
  /// @macro {@macro device_details}
  const DeviceDetails({
    this.deviceId,
    this.deviceInstallationId,
    this.deviceName,
  });

  /// Converts a [Map] to an [DeviceDetails]
  factory DeviceDetails.fromJson(Map<String, dynamic> json) =>
      _$DeviceDetailsFromJson(json);

  /// Converts a [DeviceDetails] to a [Map]
  Map<String, dynamic> toJson() => _$DeviceDetailsToJson(this);

  /// The Square-issued ID of the device.
  final String? deviceId;

  /// The Square-issued installation ID for the device.
  final String? deviceInstallationId;

  /// The name of the device set by the seller.
  final String? deviceName;

  @override
  List<Object?> get props => [deviceId, deviceInstallationId, deviceName];
}
