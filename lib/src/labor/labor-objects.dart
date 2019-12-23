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

  factory BreakType.fromJson(Map<dynamic, dynamic> json) {
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (locationId != null) body['location_id'] = locationId;
    if (name != null) body['break_name'] = name;
    if (expectedDuration != null)
      body['expected_duration'] = durationToString(expectedDuration);
    if (isPaid != null) body['is_paid'] = isPaid;
    if (version != null) body['version'] = version;
    if (updatedAt != null) body['updated_at'] = updatedAt.toString();
    if (createdAt != null) body['created_at'] = createdAt.toString();

    return body;
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

  factory Break.fromJson(Map<dynamic, dynamic> json) {
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

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
  final ShiftStatus status;
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
      this.status,
      this.version,
      this.createdAt,
      this.updatedAt});

  factory Shift.fromJson(Map<dynamic, dynamic> json) {
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
      status: json['status'] != null
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (employeeId != null) body['employee_id'] = employeeId;
    if (locationId != null) body['location_id'] = locationId;
    if (timezone != null) body['timezone'] = timezone;
    if (startAt != null) body['start_at'] = startAt.toString();
    if (endAt != null) body['end_at'] = endAt.toString();
    if (wage != null) body['wage'] = wage.toJson();
    if (breaks != null)
      body['breaks'] = breaks.map((item) => item.toJson()).toList();
    if (version != null) body['version'] = version;
    if (status != null) body['status'] = getStringFromShiftStatus(status);
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (updatedAt != null) body['updated_at'] = updatedAt.toString();

    return body;
  }
}

class ShiftWage {
  final String title;
  final Money hourlyRate;

  ShiftWage({this.title, this.hourlyRate});

  factory ShiftWage.fromJson(Map<dynamic, dynamic> json) {
    return ShiftWage(
      title: json['title'],
      hourlyRate: json['hourly_rate'] != null
          ? Money.fromJson(json['hourly_rate'])
          : null,
    );
  }

  Map<dynamic, dynamic> toJson() {
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

  factory WorkweekConfig.fromJson(Map<dynamic, dynamic> json) {
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

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (startOfWeek != null)
      body['start_of_week'] = getStringFromDayOfWeek(startOfWeek);
    if (startOfDayLocalTime != null)
      body['start_of_day_local_time'] = startOfDayLocalTime.toString();
    if (version != null) body['version'] = version;
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (updatedAt != null) body['updated_at'] = updatedAt.toString();

    return body;
  }
}

class EmployeeWage {
  final String id;
  final String employeeId;
  final String title;
  final Money hourlyRate;

  EmployeeWage({this.id, this.employeeId, this.title, this.hourlyRate});

  factory EmployeeWage.fromJson(Map<dynamic, dynamic> json) {
    return EmployeeWage(
      id: json['id'],
      employeeId: json['employee_id'],
      title: json['title'],
      hourlyRate: json['hourly_rate'] != null
          ? Money.fromJson(json['hourly_rate'])
          : null,
    );
  }

  Map<dynamic, dynamic> toJson() {
    var body = Map<dynamic, dynamic>();

    if (id != null) body['id'] = id;
    if (employeeId != null) body['employee_id'] = employeeId;
    if (title != null) body['title'] = title;
    if (hourlyRate != null) body['hourly_rate'] = hourlyRate.toJson();

    return body;
  }
}

class ShiftWorkday {
  final DateRange dateRange;
  final ShiftWorkdayMatcher matchShiftsBy;
  final String defaultTimezone;

  ShiftWorkday({this.dateRange, this.matchShiftsBy, this.defaultTimezone});

  Map<dynamic, dynamic> toJson() {
    return {
      'date_range': dateRange.toJson(),
      'match_shifts_by': getStringFromShiftWorkdayMatcher(matchShiftsBy),
      'default_timezone': defaultTimezone,
    };
  }
}
