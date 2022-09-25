import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'labor_objects.g.dart';

@JsonSerializable()
class BreakType extends Equatable {
  const BreakType({
    required this.id,
    required this.locationId,
    required this.name,
    required this.expectedDuration,
    required this.isPaid,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [BreakType]
  factory BreakType.fromJson(Map<String, dynamic> json) =>
      _$BreakTypeFromJson(json);

  /// Converts a [BreakType] to a [Map]
  Map<String, dynamic> toJson() => _$BreakTypeToJson(this);

  final String id;
  final String locationId;
  final String name;
  final Duration expectedDuration;
  final bool isPaid;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      locationId,
      name,
      expectedDuration,
      isPaid,
      version,
      createdAt,
      updatedAt,
    ];
  }
}

@JsonSerializable()
class Break extends Equatable {
  const Break({
    required this.id,
    required this.startAt,
    required this.endAt,
    required this.breakTypeId,
    required this.name,
    required this.expectedDuration,
    required this.isPaid,
  });

  /// Converts a [Map] to an [Break]
  factory Break.fromJson(Map<String, dynamic> json) => _$BreakFromJson(json);

  /// Converts a [Break] to a [Map]
  Map<String, dynamic> toJson() => _$BreakToJson(this);

  final String id;
  final DateTime startAt;
  final DateTime endAt;
  final String breakTypeId;
  final String name;
  final Duration expectedDuration;
  final bool isPaid;

  @override
  List<Object?> get props {
    return [
      id,
      startAt,
      endAt,
      breakTypeId,
      name,
      expectedDuration,
      isPaid,
    ];
  }
}

@JsonSerializable()
class Shift extends Equatable {
  const Shift({
    required this.id,
    required this.employeeId,
    required this.locationId,
    required this.timezone,
    required this.startAt,
    required this.endAt,
    required this.wage,
    required this.breaks,
    required this.status,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [Shift]
  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);

  /// Converts a [Shift] to a [Map]
  Map<String, dynamic> toJson() => _$ShiftToJson(this);

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

  @override
  List<Object?> get props {
    return [
      id,
      employeeId,
      locationId,
      timezone,
      startAt,
      endAt,
      wage,
      breaks,
      status,
      version,
      createdAt,
      updatedAt,
    ];
  }
}

@JsonSerializable()
class ShiftWage extends Equatable {
  const ShiftWage({
    required this.title,
    required this.hourlyRate,
  });

  /// Converts a [Map] to an [ShiftWage]
  factory ShiftWage.fromJson(Map<String, dynamic> json) =>
      _$ShiftWageFromJson(json);

  /// Converts a [ShiftWage] to a [Map]
  Map<String, dynamic> toJson() => _$ShiftWageToJson(this);

  final String title;
  final Money hourlyRate;

  @override
  List<Object?> get props => [title, hourlyRate];
}

@JsonSerializable()
class WorkweekConfig extends Equatable {
  const WorkweekConfig({
    required this.id,
    required this.startOfWeek,
    required this.startOfDayLocalTime,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [WorkweekConfig]
  factory WorkweekConfig.fromJson(Map<String, dynamic> json) =>
      _$WorkweekConfigFromJson(json);

  /// Converts a [WorkweekConfig] to a [Map]
  Map<String, dynamic> toJson() => _$WorkweekConfigToJson(this);

  final String id;
  final DayOfWeek startOfWeek;
  final SquareTimeOfDay startOfDayLocalTime;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      startOfWeek,
      startOfDayLocalTime,
      version,
      createdAt,
      updatedAt,
    ];
  }
}

@JsonSerializable()
class EmployeeWage extends Equatable {
  const EmployeeWage({
    required this.id,
    required this.employeeId,
    required this.title,
    required this.hourlyRate,
  });

  /// Converts a [Map] to an [EmployeeWage]
  factory EmployeeWage.fromJson(Map<String, dynamic> json) =>
      _$EmployeeWageFromJson(json);

  /// Converts a [EmployeeWage] to a [Map]
  Map<String, dynamic> toJson() => _$EmployeeWageToJson(this);

  final String id;
  final String employeeId;
  final String title;
  final Money hourlyRate;

  @override
  List<Object?> get props => [id, employeeId, title, hourlyRate];
}

@JsonSerializable()
class ShiftWorkday extends Equatable {
  const ShiftWorkday({
    required this.dateRange,
    required this.matchShiftsBy,
    required this.defaultTimezone,
  });

  /// Converts a [Map] to an [ShiftWorkday]
  factory ShiftWorkday.fromJson(Map<String, dynamic> json) =>
      _$ShiftWorkdayFromJson(json);

  /// Converts a [ShiftWorkday] to a [Map]
  Map<String, dynamic> toJson() => _$ShiftWorkdayToJson(this);

  final DateRange dateRange;
  final ShiftWorkdayMatcher matchShiftsBy;
  final String defaultTimezone;

  @override
  List<Object?> get props => [dateRange, matchShiftsBy, defaultTimezone];
}
