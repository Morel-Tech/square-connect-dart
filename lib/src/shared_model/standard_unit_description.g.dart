// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard_unit_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandardUnitDescription _$StandardUnitDescriptionFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescription(
      unit: json['unit'] == null
          ? null
          : MeasurementUnit.fromJson(json['unit'] as Map<String, dynamic>),
      name: json['name'] as String?,
      abbreviation: json['abbreviation'] as String?,
    );

Map<String, dynamic> _$StandardUnitDescriptionToJson(
    StandardUnitDescription instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unit', instance.unit?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('abbreviation', instance.abbreviation);
  return val;
}
