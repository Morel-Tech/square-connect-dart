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
