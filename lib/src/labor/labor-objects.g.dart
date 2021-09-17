// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labor-objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreakType _$BreakTypeFromJson(Map<String, dynamic> json) => BreakType(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      name: json['name'] as String,
      expectedDuration: Duration(microseconds: json['expectedDuration'] as int),
      isPaid: json['isPaid'] as bool,
      version: json['version'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$BreakTypeToJson(BreakType instance) => <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'name': instance.name,
      'expectedDuration': instance.expectedDuration.inMicroseconds,
      'isPaid': instance.isPaid,
      'version': instance.version,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Break _$BreakFromJson(Map<String, dynamic> json) => Break(
      id: json['id'] as String,
      startAt: DateTime.parse(json['startAt'] as String),
      endAt: DateTime.parse(json['endAt'] as String),
      breakTypeId: json['breakTypeId'] as String,
      name: json['name'] as String,
      expectedDuration: Duration(microseconds: json['expectedDuration'] as int),
      isPaid: json['isPaid'] as bool,
    );

Map<String, dynamic> _$BreakToJson(Break instance) => <String, dynamic>{
      'id': instance.id,
      'startAt': instance.startAt.toIso8601String(),
      'endAt': instance.endAt.toIso8601String(),
      'breakTypeId': instance.breakTypeId,
      'name': instance.name,
      'expectedDuration': instance.expectedDuration.inMicroseconds,
      'isPaid': instance.isPaid,
    };

Shift _$ShiftFromJson(Map<String, dynamic> json) => Shift(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      locationId: json['locationId'] as String,
      timezone: json['timezone'] as String,
      startAt: DateTime.parse(json['startAt'] as String),
      endAt: DateTime.parse(json['endAt'] as String),
      wage: ShiftWage.fromJson(json['wage'] as Map<String, dynamic>),
      breaks: (json['breaks'] as List<dynamic>)
          .map((e) => Break.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: _$enumDecode(_$ShiftStatusEnumMap, json['status']),
      version: json['version'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ShiftToJson(Shift instance) => <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'locationId': instance.locationId,
      'timezone': instance.timezone,
      'startAt': instance.startAt.toIso8601String(),
      'endAt': instance.endAt.toIso8601String(),
      'wage': instance.wage,
      'breaks': instance.breaks,
      'status': _$ShiftStatusEnumMap[instance.status],
      'version': instance.version,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
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
      hourlyRate: Money.fromJson(json['hourlyRate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShiftWageToJson(ShiftWage instance) => <String, dynamic>{
      'title': instance.title,
      'hourlyRate': instance.hourlyRate,
    };

WorkweekConfig _$WorkweekConfigFromJson(Map<String, dynamic> json) =>
    WorkweekConfig(
      id: json['id'] as String,
      startOfWeek: _$enumDecode(_$DayOfWeekEnumMap, json['startOfWeek']),
      startOfDayLocalTime: SquareTimeOfDay.fromJson(
          json['startOfDayLocalTime'] as Map<String, dynamic>),
      version: json['version'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WorkweekConfigToJson(WorkweekConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startOfWeek': _$DayOfWeekEnumMap[instance.startOfWeek],
      'startOfDayLocalTime': instance.startOfDayLocalTime,
      'version': instance.version,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
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
      employeeId: json['employeeId'] as String,
      title: json['title'] as String,
      hourlyRate: Money.fromJson(json['hourlyRate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeWageToJson(EmployeeWage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'title': instance.title,
      'hourlyRate': instance.hourlyRate,
    };

ShiftWorkday _$ShiftWorkdayFromJson(Map<String, dynamic> json) => ShiftWorkday(
      dateRange: DateRange.fromJson(json['dateRange'] as Map<String, dynamic>),
      matchShiftsBy:
          _$enumDecode(_$ShiftWorkdayMatcherEnumMap, json['matchShiftsBy']),
      defaultTimezone: json['defaultTimezone'] as String,
    );

Map<String, dynamic> _$ShiftWorkdayToJson(ShiftWorkday instance) =>
    <String, dynamic>{
      'dateRange': instance.dateRange,
      'matchShiftsBy': _$ShiftWorkdayMatcherEnumMap[instance.matchShiftsBy],
      'defaultTimezone': instance.defaultTimezone,
    };

const _$ShiftWorkdayMatcherEnumMap = {
  ShiftWorkdayMatcher.startAt: 'START_AT',
  ShiftWorkdayMatcher.endAt: 'END_AT',
  ShiftWorkdayMatcher.intersection: 'INTERSECTION',
};
