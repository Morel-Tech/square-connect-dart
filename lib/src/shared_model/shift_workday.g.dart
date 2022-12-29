// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_workday.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftWorkday _$ShiftWorkdayFromJson(Map<String, dynamic> json) => ShiftWorkday(
      dateRange: DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
      matchShiftsBy:
          $enumDecode(_$ShiftWorkdayMatcherEnumMap, json['match_shifts_by']),
      defaultTimezone: json['default_timezone'] as String,
    );

Map<String, dynamic> _$ShiftWorkdayToJson(ShiftWorkday instance) =>
    <String, dynamic>{
      'date_range': instance.dateRange.toJson(),
      'match_shifts_by': _$ShiftWorkdayMatcherEnumMap[instance.matchShiftsBy]!,
      'default_timezone': instance.defaultTimezone,
    };

const _$ShiftWorkdayMatcherEnumMap = {
  ShiftWorkdayMatcher.startAt: 'START_AT',
  ShiftWorkdayMatcher.endAt: 'END_AT',
  ShiftWorkdayMatcher.intersection: 'INTERSECTION',
};
