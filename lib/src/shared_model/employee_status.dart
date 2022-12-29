import 'package:json_annotation/json_annotation.dart';

/// Indicates the status of the Employee.
enum EmployeeStatus {
  /// Specifies that the employee is in the Active state.
  @JsonValue('ACTIVE')
  active,

  /// Specifies that the employee is in the Inactive state.
  @JsonValue('INACTIVE')
  inactive,
}
