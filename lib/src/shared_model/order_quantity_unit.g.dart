// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_quantity_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderQuantityUnit _$OrderQuantityUnitFromJson(Map<String, dynamic> json) =>
    OrderQuantityUnit(
      measurementUnit: json['measurement_unit'] == null
          ? null
          : MeasurementUnit.fromJson(
              json['measurement_unit'] as Map<String, dynamic>),
      precision: json['precision'] as int?,
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogVersion: json['catalog_version'] as int?,
    );

Map<String, dynamic> _$OrderQuantityUnitToJson(OrderQuantityUnit instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('measurement_unit', instance.measurementUnit?.toJson());
  writeNotNull('precision', instance.precision);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  return val;
}
