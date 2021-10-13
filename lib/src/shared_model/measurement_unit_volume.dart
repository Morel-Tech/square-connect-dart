import 'package:json_annotation/json_annotation.dart';

/// Indicates a unit of volume used to measure a quantity.
enum MeasurementUnitVolume {
  @JsonValue('GENERIC_FLUID_OUNCE')
  genericFluidOunce,
  @JsonValue('GENERIC_SHOT')
  genericShot,
  @JsonValue('GENERIC_CUP')
  genericCup,
  @JsonValue('GENERIC_PINT')
  genericPint,
  @JsonValue('GENERIC_QUART')
  genericQuart,
  @JsonValue('GENERIC_GALLON')
  genericGallon,
  @JsonValue('IMPERIAL_CUBIC_INCH')
  imperialCubicInch,
  @JsonValue('IMPERIAL_CUBIC_FOOT')
  imperialCubicFoot,
  @JsonValue('IMPERIAL_CUBIC_YARD')
  imperialCubicYard,
  @JsonValue('METRIC_MILLILITER')
  metricMilliliter,
  @JsonValue('METRIC_LITER')
  metricLiter,
}
