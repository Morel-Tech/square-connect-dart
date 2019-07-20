import 'package:square_connect/square_connect.dart';

/// The response to the `listEmployees()` method in [EmployeesApi].
class ListEmployeesResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The List of [Employee]s.
  final List<Employee> employees;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListEmployeesResponse({
    this.errors,
    this.employees,
    this.cursor,
  });

  factory ListEmployeesResponse.fromJson(Map<String, dynamic> json) {
    return ListEmployeesResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      employees: json['employees'] != null
          ? (json['employees'] as List)
              .map((item) => Employee.fromJson(item))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `retrieveEmployees()` method in [EmployeesApi].
class RetrieveEmployeeResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [Employee].
  final Employee employee;

  RetrieveEmployeeResponse({
    this.errors,
    this.employee,
  });

  factory RetrieveEmployeeResponse.fromJson(Map<String, dynamic> json) {
    return RetrieveEmployeeResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      employee:
          json['employee'] != null ? Employee.fromJson(json['employee']) : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}
