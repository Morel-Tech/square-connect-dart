import 'package:square_connect/square_connect.dart';

/// The response to the `createBreakType()` method in [LaborApi].
class CreateBreakTypeResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly created [BreakType].
  final BreakType breakType;

  CreateBreakTypeResponse({this.errors, this.breakType});

  factory CreateBreakTypeResponse.fromJson(Map<String, dynamic> json) {
    return CreateBreakTypeResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      breakType: json['break_type'] != null
          ? BreakType.fromJson(json['break_type'])
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `deleteBreakType()` method in [LaborApi].
class DeleteBreakTypeResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  DeleteBreakTypeResponse({this.errors});

  factory DeleteBreakTypeResponse.fromJson(Map<String, dynamic> json) {
    return DeleteBreakTypeResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `createShift()` method in [LaborApi].
class CreateShiftResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly created [Shift].
  final Shift shift;

  CreateShiftResponse({this.errors, this.shift});

  factory CreateShiftResponse.fromJson(Map<String, dynamic> json) {
    return CreateShiftResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      shift: json['shift'] != null ? Shift.fromJson(json['shift']) : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `deleteShift()` method in [LaborApi].
class DeleteShiftResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  DeleteShiftResponse({this.errors});

  factory DeleteShiftResponse.fromJson(Map<String, dynamic> json) {
    return DeleteShiftResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `getBreakType()` method in [LaborApi].
class GetBreakTypeResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [BreakType].
  final BreakType breakType;

  GetBreakTypeResponse({this.errors, this.breakType});

  factory GetBreakTypeResponse.fromJson(Map<String, dynamic> json) {
    return GetBreakTypeResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      breakType: json['break_type'] != null
          ? BreakType.fromJson(json['break_type'])
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `getEmployeeWage()` method in [LaborApi].
class GetEmployeeWageResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [EmployeeWage].
  final EmployeeWage employeeWage;

  GetEmployeeWageResponse({this.errors, this.employeeWage});

  factory GetEmployeeWageResponse.fromJson(Map<String, dynamic> json) {
    return GetEmployeeWageResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      employeeWage: json['break_type'] != null
          ? EmployeeWage.fromJson(json['break_type'])
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `getShift()` method in [LaborApi].
class GetShiftResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [Shift].
  final Shift shift;

  GetShiftResponse({this.errors, this.shift});

  factory GetShiftResponse.fromJson(Map<String, dynamic> json) {
    return GetShiftResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      shift: json['shift'] != null ? Shift.fromJson(json['shift']) : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `listBreakTypes()` method in [LaborApi].
class ListBreakTypesResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved list of [BreakType]s.
  final List<BreakType> breakTypes;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListBreakTypesResponse({this.errors, this.breakTypes, this.cursor});

  factory ListBreakTypesResponse.fromJson(Map<String, dynamic> json) {
    return ListBreakTypesResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      breakTypes: json['break_types'] != null
          ? (json['break_types'] as List)
              .map((error) => BreakType.fromJson(error))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `listEmployeeWages()` method in [LaborApi].
class ListEmployeeWagesResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved list of [EmployeeWage]s.
  final List<EmployeeWage> employeeWages;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListEmployeeWagesResponse({this.errors, this.employeeWages, this.cursor});

  factory ListEmployeeWagesResponse.fromJson(Map<String, dynamic> json) {
    return ListEmployeeWagesResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      employeeWages: json['employee_wages'] != null
          ? (json['employee_wages'] as List)
              .map((error) => EmployeeWage.fromJson(error))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `listWorkweekConfigs()` method in [LaborApi].
class ListWorkweekConfigsResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved list of [WorkweekConfig]s.
  final List<WorkweekConfig> workweekConfigs;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListWorkweekConfigsResponse({this.errors, this.workweekConfigs, this.cursor});

  factory ListWorkweekConfigsResponse.fromJson(Map<String, dynamic> json) {
    return ListWorkweekConfigsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      workweekConfigs: json['workweek_configs'] != null
          ? (json['workweek_configs'] as List)
              .map((error) => WorkweekConfig.fromJson(error))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `searchShifts()` method in [LaborApi].
class SearchShiftsResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved list of [Shift]s.
  final List<Shift> shifts;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  SearchShiftsResponse({this.errors, this.shifts, this.cursor});

  factory SearchShiftsResponse.fromJson(Map<String, dynamic> json) {
    return SearchShiftsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      shifts: json['shifts'] != null
          ? (json['shifts'] as List)
              .map((error) => Shift.fromJson(error))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `updateBreakType()` method in [LaborApi].
class UpdateBreakTypeResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The updated [BreakType].
  final BreakType breakType;

  UpdateBreakTypeResponse({this.errors, this.breakType});

  factory UpdateBreakTypeResponse.fromJson(Map<String, dynamic> json) {
    return UpdateBreakTypeResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      breakType: json['break_type'] != null
          ? BreakType.fromJson(json['break_type'])
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `updateShift()` method in [LaborApi].
class UpdateShiftResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The updated [Shift].
  final Shift shift;

  UpdateShiftResponse({this.errors, this.shift});

  factory UpdateShiftResponse.fromJson(Map<String, dynamic> json) {
    return UpdateShiftResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      shift: json['shift'] != null ? Shift.fromJson(json['shift']) : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `updateWorkweekConfig()` method in [LaborApi].
class UpdateWorkweekConfigResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The updated [WorkweekConfig].
  final WorkweekConfig workweekConfig;

  UpdateWorkweekConfigResponse({this.errors, this.workweekConfig});

  factory UpdateWorkweekConfigResponse.fromJson(Map<String, dynamic> json) {
    return UpdateWorkweekConfigResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      workweekConfig: json['workweek_config'] != null
          ? WorkweekConfig.fromJson(json['workweek_config'])
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}
