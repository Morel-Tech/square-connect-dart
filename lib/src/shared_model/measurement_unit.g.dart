// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasurementUnit _$MeasurementUnitFromJson(Map<String, dynamic> json) =>
    MeasurementUnit(
      customUnit: json['custom_unit'] == null
          ? null
          : MeasurementUnitCustom.fromJson(
              json['custom_unit'] as Map<String, dynamic>),
      areaUnit:
          _$enumDecodeNullable(_$MeasurementUnitAreaEnumMap, json['area_unit']),
      lengthUnit: _$enumDecodeNullable(
          _$MeasurementUnitLengthEnumMap, json['length_unit']),
      volumeUnit: _$enumDecodeNullable(
          _$MeasurementUnitVolumeEnumMap, json['volume_unit']),
      weightUnit: _$enumDecodeNullable(
          _$MeasurementUnitWeightEnumMap, json['weight_unit']),
      genericUnit: json['generic_unit'] as String?,
    );

Map<String, dynamic> _$MeasurementUnitToJson(MeasurementUnit instance) =>
    <String, dynamic>{
      'custom_unit': instance.customUnit?.toJson(),
      'area_unit': _$MeasurementUnitAreaEnumMap[instance.areaUnit],
      'length_unit': _$MeasurementUnitLengthEnumMap[instance.lengthUnit],
      'volume_unit': _$MeasurementUnitVolumeEnumMap[instance.volumeUnit],
      'weight_unit': _$MeasurementUnitWeightEnumMap[instance.weightUnit],
      'generic_unit': instance.genericUnit,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$MeasurementUnitAreaEnumMap = {
  MeasurementUnitArea.imperialAcre: 'IMPERIAL_ACRE',
  MeasurementUnitArea.imperialSquareInch: 'IMPERIAL_SQUARE_INCH',
  MeasurementUnitArea.imperialSquareFoot: 'IMPERIAL_SQUARE_FOOT',
  MeasurementUnitArea.imperialSquareYard: 'IMPERIAL_SQUARE_YARD',
  MeasurementUnitArea.imperialSquareMile: 'IMPERIAL_SQUARE_MILE',
  MeasurementUnitArea.metricSquareCentimeter: 'METRIC_SQUARE_CENTIMETER',
  MeasurementUnitArea.metricSquareMeter: 'METRIC_SQUARE_METER',
  MeasurementUnitArea.metricSquareKilometer: 'METRIC_SQUARE_KILOMETER',
};

const _$MeasurementUnitLengthEnumMap = {
  MeasurementUnitLength.imperialInch: 'IMPERIAL_INCH',
  MeasurementUnitLength.imperialFoot: 'IMPERIAL_FOOT',
  MeasurementUnitLength.imperialYard: 'IMPERIAL_YARD',
  MeasurementUnitLength.imperialMile: 'IMPERIAL_MILE',
  MeasurementUnitLength.metricMillimeter: 'METRIC_MILLIMETER',
  MeasurementUnitLength.metricCentimeter: 'METRIC_CENTIMETER',
  MeasurementUnitLength.metricMeter: 'METRIC_METER',
  MeasurementUnitLength.metricKilometer: 'METRIC_KILOMETER',
};

const _$MeasurementUnitVolumeEnumMap = {
  MeasurementUnitVolume.genericFluidOunce: 'GENERIC_FLUID_OUNCE',
  MeasurementUnitVolume.genericShot: 'GENERIC_SHOT',
  MeasurementUnitVolume.genericCup: 'GENERIC_CUP',
  MeasurementUnitVolume.genericPint: 'GENERIC_PINT',
  MeasurementUnitVolume.genericQuart: 'GENERIC_QUART',
  MeasurementUnitVolume.genericGallon: 'GENERIC_GALLON',
  MeasurementUnitVolume.imperialCubicInch: 'IMPERIAL_CUBIC_INCH',
  MeasurementUnitVolume.imperialCubicFoot: 'IMPERIAL_CUBIC_FOOT',
  MeasurementUnitVolume.imperialCubicYard: 'IMPERIAL_CUBIC_YARD',
  MeasurementUnitVolume.metricMilliliter: 'METRIC_MILLILITER',
  MeasurementUnitVolume.metricLiter: 'METRIC_LITER',
};

const _$MeasurementUnitWeightEnumMap = {
  MeasurementUnitWeight.imperialWeightOunce: 'IMPERIAL_WEIGHT_OUNCE',
  MeasurementUnitWeight.imperialPound: 'IMPERIAL_POUND',
  MeasurementUnitWeight.imperialStone: 'IMPERIAL_STONE',
  MeasurementUnitWeight.metricMilligram: 'METRIC_MILLIGRAM',
  MeasurementUnitWeight.metricGram: 'METRIC_GRAM',
  MeasurementUnitWeight.metricKilogram: 'METRIC_KILOGRAM',
};
