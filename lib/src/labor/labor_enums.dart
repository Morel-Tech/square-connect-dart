import 'package:json_annotation/json_annotation.dart';

/// Indicates whether or not a Shift is finished.
enum ShiftStatus {
  /// Employee started a work shift and the shift is not complete
  @JsonValue('OPEN')
  open,

  /// Employee started and ended a work shift.
  @JsonValue('CLOSED')
  closed,
}

/// Enumerates the Shift fields to sort on.
enum ShiftSortField {
  /// The start date/time of the Shift.
  @JsonValue('START_AT')
  startAt,

  /// The end date/time of the Shift.
  @JsonValue('END_AT')
  endAt,

  /// The date/time that the Shift was created.
  @JsonValue('CREATED_AT')
  createdAt,

  /// The most recent date/time that the Shift has been updated.
  @JsonValue('UPDATED_AT')
  updatedAt,
}

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
