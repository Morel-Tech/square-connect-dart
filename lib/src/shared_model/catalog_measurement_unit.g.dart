// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_measurement_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogMeasurementUnit _$CatalogMeasurementUnitFromJson(
        Map<String, dynamic> json) =>
    CatalogMeasurementUnit(
      measurementUnit: json['measurement_unit'] == null
          ? null
          : MeasurementUnit.fromJson(
              json['measurement_unit'] as Map<String, dynamic>),
      precision: json['precision'] as int?,
    );

Map<String, dynamic> _$CatalogMeasurementUnitToJson(
    CatalogMeasurementUnit instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('measurement_unit', instance.measurementUnit?.toJson());
  writeNotNull('precision', instance.precision);
  return val;
}
