// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_hours_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessHoursPeriod _$BusinessHoursPeriodFromJson(Map<String, dynamic> json) =>
    BusinessHoursPeriod(
      startLocalTime: json['start_local_time'] == null
          ? null
          : SquareTimeOfDay.fromJson(json['start_local_time'] as String),
      endLocalTime: json['end_local_time'] == null
          ? null
          : SquareTimeOfDay.fromJson(json['end_local_time'] as String),
      dayOfWeek: $enumDecodeNullable(_$DayOfWeekEnumMap, json['day_of_week']),
    );

Map<String, dynamic> _$BusinessHoursPeriodToJson(
        BusinessHoursPeriod instance) =>
    <String, dynamic>{
      'start_local_time': instance.startLocalTime?.toJson(),
      'end_local_time': instance.endLocalTime?.toJson(),
      'day_of_week': _$DayOfWeekEnumMap[instance.dayOfWeek],
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.sunday: 'SUN',
  DayOfWeek.monday: 'MON',
  DayOfWeek.tuesday: 'TUE',
  DayOfWeek.wednesday: 'WED',
  DayOfWeek.thursday: 'THU',
  DayOfWeek.friday: 'FRI',
  DayOfWeek.saturday: 'SAT',
};
