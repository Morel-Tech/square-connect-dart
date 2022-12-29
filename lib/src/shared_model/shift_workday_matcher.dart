import 'package:json_annotation/json_annotation.dart';

/// Defines the logic used to apply a workday filter.
enum ShiftWorkdayMatcher {
  /// All shifts that start on or after the specified workday.
  @JsonValue('START_AT')
  startAt,

  /// All shifts that end on or before the specified workday.
  @JsonValue('END_AT')
  endAt,

  /// All shifts that start between the start and end workdays (inclusive).
  @JsonValue('INTERSECTION')
  intersection,
}
