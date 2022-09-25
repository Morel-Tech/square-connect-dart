import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'measurement_unit_custom.g.dart';

@JsonSerializable()
class MeasurementUnitCustom extends Equatable {
  const MeasurementUnitCustom({
    required this.name,
    required this.abbreviation,
  });

  /// Converts a [Map] to an [MeasurementUnitCustom]
  factory MeasurementUnitCustom.fromJson(Map<String, dynamic> json) =>
      _$MeasurementUnitCustomFromJson(json);

  /// Converts a [MeasurementUnitCustom] to a [Map]
  Map<String, dynamic> toJson() => _$MeasurementUnitCustomToJson(this);

  final String name;
  final String abbreviation;

  @override
  List<Object?> get props => [name, abbreviation];
}
