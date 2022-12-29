// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workweek_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkweekConfig _$WorkweekConfigFromJson(Map<String, dynamic> json) =>
    WorkweekConfig(
      id: json['id'] as String,
      startOfWeek: $enumDecode(_$DayOfWeekEnumMap, json['start_of_week']),
      startOfDayLocalTime:
          SquareTimeOfDay.fromJson(json['start_of_day_local_time'] as String),
      version: json['version'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$WorkweekConfigToJson(WorkweekConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_of_week': _$DayOfWeekEnumMap[instance.startOfWeek]!,
      'start_of_day_local_time': instance.startOfDayLocalTime.toJson(),
      'version': instance.version,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
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
