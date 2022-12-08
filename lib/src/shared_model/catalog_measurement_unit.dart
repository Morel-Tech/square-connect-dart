import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_measurement_unit.g.dart';

@JsonSerializable()
class CatalogMeasurementUnit extends Equatable {
  const CatalogMeasurementUnit({
    this.measurementUnit,
    this.precision,
  });

  /// Converts a [Map] to an [CatalogMeasurementUnit]
  factory CatalogMeasurementUnit.fromJson(Map<String, dynamic> json) =>
      _$CatalogMeasurementUnitFromJson(json);

  /// Converts a [CatalogMeasurementUnit] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogMeasurementUnitToJson(this);

  final MeasurementUnit? measurementUnit;
  final int? precision;

  @override
  List<Object?> get props => [measurementUnit, precision];
}
