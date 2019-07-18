/// Indicates payment capabilities that a location might or might not have enabled.
enum LocationCapability {
  creditCardProcessing,
}

/// Indicates if a location is active or inactive.
enum LocationStatus {
  active,
  inactive,
}

/// Indicates a type of location (physical or mobile).
enum LocationType {
  physical,
  mobile,
}

/// Indicates a day of a 7 day week.
enum DayOfWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}
