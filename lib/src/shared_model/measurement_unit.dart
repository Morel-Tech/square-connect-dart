import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'measurement_unit.g.dart';

@JsonSerializable()
class MeasurementUnit extends Equatable {
  const MeasurementUnit({
    this.customUnit,
    this.areaUnit,
    this.lengthUnit,
    this.volumeUnit,
    this.weightUnit,
    this.genericUnit,
  });

  /// Converts a [Map] to an [MeasurementUnit]
  factory MeasurementUnit.fromJson(Map<String, dynamic> json) =>
      _$MeasurementUnitFromJson(json);

  /// Converts a [MeasurementUnit] to a [Map]
  Map<String, dynamic> toJson() => _$MeasurementUnitToJson(this);

  final MeasurementUnitCustom? customUnit;
  final MeasurementUnitArea? areaUnit;
  final MeasurementUnitLength? lengthUnit;
  final MeasurementUnitVolume? volumeUnit;
  final MeasurementUnitWeight? weightUnit;
  final String? genericUnit;

  @override
  List<Object?> get props => [
        customUnit,
        areaUnit,
        lengthUnit,
        volumeUnit,
        weightUnit,
        genericUnit,
      ];
}
