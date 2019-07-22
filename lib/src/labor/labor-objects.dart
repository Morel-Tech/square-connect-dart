import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/labor/labor-enums-converter.dart';
import 'package:square_connect/src/shared-enums-converter.dart';

class BreakType {
  final String id;
  final String locationId;
  final String name;
  final Duration expectedDuration;
  final bool isPaid;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  BreakType(
      {this.id,
      this.locationId,
      this.name,
      this.expectedDuration,
      this.isPaid,
      this.version,
      this.createdAt,
      this.updatedAt});

  factory BreakType.fromJson(Map<String, dynamic> json) {
    return BreakType(
      id: json['id'],
      locationId: json['location_id'],
      name: json['break_name'],
      expectedDuration: json['expected_duration'] != null
          ? parseDuration(json['expected_duration'])
          : null,
      isPaid: json['is_paid'],
      version: json['version'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}

class Break {
  final String id;
  final DateTime startAt;
  final DateTime endAt;
  final String breakTypeId;
  final String name;
  final Duration expectedDuration;
  final bool isPaid;

  Break(
      {this.id,
      this.startAt,
      this.endAt,
      this.breakTypeId,
      this.name,
      this.expectedDuration,
      this.isPaid});

  factory Break.creation({
    DateTime startAt,
    DateTime endAt,
    String breakTimeId,
  }) {
    return Break(
      startAt: startAt,
      endAt: endAt,
      breakTypeId: breakTimeId,
    );
  }

  factory Break.fromJson(Map<String, dynamic> json) {
    return Break(
      id: json['id'],
      startAt:
          json['start_at'] != null ? DateTime.parse(json['start_at']) : null,
      endAt: json['end_at'] != null ? DateTime.parse(json['end_at']) : null,
      breakTypeId: json['break_type_id'],
      name: json['name'],
      expectedDuration: json['expected_duration'] != null
          ? parseDuration(json['expected_duration'])
          : null,
      isPaid: json['is_paid'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (startAt != null) body['start_at'] = startAt.toIso8601String();
    if (endAt != null) body['end_at'] = endAt.toIso8601String();
    if (breakTypeId != null) body['break_type_id'] = breakTypeId;
    if (name != null) body['name'] = name;
    if (expectedDuration != null) body['expected_duration'] = expectedDuration;
    if (isPaid != null) body['is_paid'] = isPaid;

    return body;
  }
}

class Shift {
  final String id;
  final String employeeId;
  final String locationId;
  final String timezone;
  final DateTime startAt;
  final DateTime endAt;
  final ShiftWage wage;
  final List<Break> breaks;
  final ShiftStatus staus;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  Shift(
      {this.id,
      this.employeeId,
      this.locationId,
      this.timezone,
      this.startAt,
      this.endAt,
      this.wage,
      this.breaks,
      this.staus,
      this.version,
      this.createdAt,
      this.updatedAt});

  factory Shift.fromJson(Map<String, dynamic> json) {
    return Shift(
      id: json['id'],
      employeeId: json['employee_id'],
      locationId: json['location_id'],
      timezone: json['timezone'],
      startAt:
          json['start_at'] != null ? DateTime.parse(json['start_at']) : null,
      endAt: json['end_at'] != null ? DateTime.parse(json['end_at']) : null,
      wage: json['wage'] != null ? ShiftWage.fromJson(json['wage']) : null,
      breaks: json['breaks'] != null
          ? (json['breaks'] as List)
              .map((item) => Break.fromJson(item))
              .toList()
          : null,
      staus: json['status'] != null
          ? getShiftStatusFromString(json['status'])
          : null,
      version: json['version'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}

class ShiftWage {
  final String title;
  final Money hourlyRate;

  ShiftWage({this.title, this.hourlyRate});

  factory ShiftWage.fromJson(Map<String, dynamic> json) {
    return ShiftWage(
      title: json['title'],
      hourlyRate: json['hourly_rate'] != null
          ? Money.fromJson(json['hourly_rate'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'hourly_rate': hourlyRate.toJson(),
    };
  }
}

class WorkweekConfig {
  final String id;
  final DayOfWeek startOfWeek;
  final SquareTimeOfDay startOfDayLocalTime;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  WorkweekConfig(
      {this.id,
      this.startOfWeek,
      this.startOfDayLocalTime,
      this.version,
      this.createdAt,
      this.updatedAt});

  factory WorkweekConfig.fromJson(Map<String, dynamic> json) {
    return WorkweekConfig(
      id: json['id'],
      startOfWeek: json['start_of_week'] != null
          ? getDayOfWeekFromString(json['start_of_week'])
          : null,
      startOfDayLocalTime: json['start_of_day_local_time'] != null
          ? SquareTimeOfDay.parse(json['start_of_day_local_time'])
          : null,
      version: json['version'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}

class EmployeeWage {
  final String id;
  final String employeeId;
  final String title;
  final Money hourlyRate;

  EmployeeWage({this.id, this.employeeId, this.title, this.hourlyRate});

  factory EmployeeWage.fromJson(Map<String, dynamic> json) {
    return EmployeeWage(
      id: json['id'],
      employeeId: json['employee_id'],
      title: json['title'],
      hourlyRate: json['hourly_rate'] != null
          ? Money.fromJson(json['hourly_rate'])
          : null,
    );
  }
}

class ShiftWorkday {
  final DateRange dateRange;
  final ShiftWorkdayMatcher matchShiftsBy;
  final String defaultTimezone;

  ShiftWorkday({this.dateRange, this.matchShiftsBy, this.defaultTimezone});

  Map<String, dynamic> toJson() {
    return {
      'date_range': dateRange.toJson(),
      'match_shifts_by': getStringFromShiftWorkdayMatcher(matchShiftsBy),
      'default_timezone': defaultTimezone,
    };
  }
}
