import 'package:json_annotation/json_annotation.dart';

/// Indicates a unit of length used to measure a quantity.
enum MeasurementUnitLength {
  @JsonValue('IMPERIAL_INCH')
  imperialInch,
  @JsonValue('IMPERIAL_FOOT')
  imperialFoot,
  @JsonValue('IMPERIAL_YARD')
  imperialYard,
  @JsonValue('IMPERIAL_MILE')
  imperialMile,
  @JsonValue('METRIC_MILLIMETER')
  metricMillimeter,
  @JsonValue('METRIC_CENTIMETER')
  metricCentimeter,
  @JsonValue('METRIC_METER')
  metricMeter,
  @JsonValue('METRIC_KILOMETER')
  metricKilometer,
}
