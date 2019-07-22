/// Indicates whether or not a [Shift] is finished.
enum ShiftStatus {
  /// Employee started a work shift and the shift is not complete
  open,
  /// Employee started and ended a work shift.
  closed,
}

/// Enumerates the [Shift] fields to sort on.
enum ShiftSortField {
  /// The start date/time of the [Shift].
  startAt,
  /// The end date/time of the [Shift].
  endAt,
  /// The date/time that the [Shift] was created.
  createdAt,
  /// The most recent date/time that the [Shift] has been updated.
  updatedAt,
}

/// Defines the logic used to apply a workday filter.
enum ShiftWorkdayMatcher {
  /// All shifts that start on or after the specified workday.
  startAt,
  /// All shifts that end on or before the specified workday.
  endAt,
  /// All shifts that start between the start and end workdays (inclusive).
  intersection,
}