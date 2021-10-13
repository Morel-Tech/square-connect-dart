import 'package:json_annotation/json_annotation.dart';

/// Indicates a unit of weight used to measure a quantity.
enum MeasurementUnitWeight {
  @JsonValue('IMPERIAL_WEIGHT_OUNCE')
  imperialWeightOunce,
  @JsonValue('IMPERIAL_POUND')
  imperialPound,
  @JsonValue('IMPERIAL_STONE')
  imperialStone,
  @JsonValue('METRIC_MILLIGRAM')
  metricMilligram,
  @JsonValue('METRIC_GRAM')
  metricGram,
  @JsonValue('METRIC_KILOGRAM')
  metricKilogram,
}
