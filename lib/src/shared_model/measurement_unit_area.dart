import 'package:json_annotation/json_annotation.dart';

/// Indicates a unit of area used to measure a quantity.
enum MeasurementUnitArea {
  @JsonValue('IMPERIAL_ACRE')
  imperialAcre,
  @JsonValue('IMPERIAL_SQUARE_INCH')
  imperialSquareInch,
  @JsonValue('IMPERIAL_SQUARE_FOOT')
  imperialSquareFoot,
  @JsonValue('IMPERIAL_SQUARE_YARD')
  imperialSquareYard,
  @JsonValue('IMPERIAL_SQUARE_MILE')
  imperialSquareMile,
  @JsonValue('METRIC_SQUARE_CENTIMETER')
  metricSquareCentimeter,
  @JsonValue('METRIC_SQUARE_METER')
  metricSquareMeter,
  @JsonValue('METRIC_SQUARE_KILOMETER')
  metricSquareKilometer,
}
