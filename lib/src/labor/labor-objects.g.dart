// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labor-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreakType _$BreakTypeFromJson(Map<String, dynamic> json) => BreakType(
      id: json['id'] as String,
      locationId: json['location_id'] as String,
      name: json['name'] as String,
      expectedDuration:
          Duration(microseconds: json['expected_duration'] as int),
      isPaid: json['is_paid'] as bool,
      version: json['version'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$BreakTypeToJson(BreakType instance) => <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'name': instance.name,
      'expected_duration': instance.expectedDuration.inMicroseconds,
      'is_paid': instance.isPaid,
      'version': instance.version,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Break _$BreakFromJson(Map<String, dynamic> json) => Break(
      id: json['id'] as String,
      startAt: DateTime.parse(json['start_at'] as String),
      endAt: DateTime.parse(json['end_at'] as String),
      breakTypeId: json['break_type_id'] as String,
      name: json['name'] as String,
      expectedDuration:
          Duration(microseconds: json['expected_duration'] as int),
      isPaid: json['is_paid'] as bool,
    );

Map<String, dynamic> _$BreakToJson(Break instance) => <String, dynamic>{
      'id': instance.id,
      'start_at': instance.startAt.toIso8601String(),
      'end_at': instance.endAt.toIso8601String(),
      'break_type_id': instance.breakTypeId,
      'name': instance.name,
      'expected_duration': instance.expectedDuration.inMicroseconds,
      'is_paid': instance.isPaid,
    };

Shift _$ShiftFromJson(Map<String, dynamic> json) => Shift(
      id: json['id'] as String,
      employeeId: json['employee_id'] as String,
      locationId: json['location_id'] as String,
      timezone: json['timezone'] as String,
      startAt: DateTime.parse(json['start_at'] as String),
      endAt: DateTime.parse(json['end_at'] as String),
      wage: ShiftWage.fromJson(json['wage'] as Map<String, dynamic>),
      breaks: (json['breaks'] as List<dynamic>)
          .map((e) => Break.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: _$enumDecode(_$ShiftStatusEnumMap, json['status']),
      version: json['version'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ShiftToJson(Shift instance) => <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'location_id': instance.locationId,
      'timezone': instance.timezone,
      'start_at': instance.startAt.toIso8601String(),
      'end_at': instance.endAt.toIso8601String(),
      'wage': instance.wage.toJson(),
      'breaks': instance.breaks.map((e) => e.toJson()).toList(),
      'status': _$ShiftStatusEnumMap[instance.status],
      'version': instance.version,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ShiftStatusEnumMap = {
  ShiftStatus.open: 'OPEN',
  ShiftStatus.closed: 'CLOSED',
};

ShiftWage _$ShiftWageFromJson(Map<String, dynamic> json) => ShiftWage(
      title: json['title'] as String,
      hourlyRate: Money.fromJson(json['hourly_rate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShiftWageToJson(ShiftWage instance) => <String, dynamic>{
      'title': instance.title,
      'hourly_rate': instance.hourlyRate.toJson(),
    };

WorkweekConfig _$WorkweekConfigFromJson(Map<String, dynamic> json) =>
    WorkweekConfig(
      id: json['id'] as String,
      startOfWeek: _$enumDecode(_$DayOfWeekEnumMap, json['start_of_week']),
      startOfDayLocalTime: SquareTimeOfDay.fromJson(
          json['start_of_day_local_time'] as Map<String, dynamic>),
      version: json['version'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$WorkweekConfigToJson(WorkweekConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_of_week': _$DayOfWeekEnumMap[instance.startOfWeek],
      'start_of_day_local_time': instance.startOfDayLocalTime.toJson(),
      'version': instance.version,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.sunday: 'SUNDAY',
  DayOfWeek.monday: 'MONDAY',
  DayOfWeek.tuesday: 'TUESDAY',
  DayOfWeek.wednesday: 'WEDNESDAY',
  DayOfWeek.thursday: 'THURSDAY',
  DayOfWeek.friday: 'FRIDAY',
  DayOfWeek.saturday: 'SATURDAY',
};

EmployeeWage _$EmployeeWageFromJson(Map<String, dynamic> json) => EmployeeWage(
      id: json['id'] as String,
      employeeId: json['employee_id'] as String,
      title: json['title'] as String,
      hourlyRate: Money.fromJson(json['hourly_rate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeWageToJson(EmployeeWage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'title': instance.title,
      'hourly_rate': instance.hourlyRate.toJson(),
    };

ShiftWorkday _$ShiftWorkdayFromJson(Map<String, dynamic> json) => ShiftWorkday(
      dateRange: DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
      matchShiftsBy:
          _$enumDecode(_$ShiftWorkdayMatcherEnumMap, json['match_shifts_by']),
      defaultTimezone: json['default_timezone'] as String,
    );

Map<String, dynamic> _$ShiftWorkdayToJson(ShiftWorkday instance) =>
    <String, dynamic>{
      'date_range': instance.dateRange.toJson(),
      'match_shifts_by': _$ShiftWorkdayMatcherEnumMap[instance.matchShiftsBy],
      'default_timezone': instance.defaultTimezone,
    };

const _$ShiftWorkdayMatcherEnumMap = {
  ShiftWorkdayMatcher.startAt: 'START_AT',
  ShiftWorkdayMatcher.endAt: 'END_AT',
  ShiftWorkdayMatcher.intersection: 'INTERSECTION',
};
