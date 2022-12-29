import 'package:json_annotation/json_annotation.dart';

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
