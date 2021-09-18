// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_hours_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessHoursPeriod _$BusinessHoursPeriodFromJson(Map<String, dynamic> json) =>
    BusinessHoursPeriod(
      startLocalTime: SquareTimeOfDay.fromJson(
          json['start_local_time'] as Map<String, dynamic>),
      endLocalTime: SquareTimeOfDay.fromJson(
          json['end_local_time'] as Map<String, dynamic>),
      dayOfWeek: _$enumDecode(_$DayOfWeekEnumMap, json['day_of_week']),
    );

Map<String, dynamic> _$BusinessHoursPeriodToJson(
        BusinessHoursPeriod instance) =>
    <String, dynamic>{
      'start_local_time': instance.startLocalTime.toJson(),
      'end_local_time': instance.endLocalTime.toJson(),
      'day_of_week': _$DayOfWeekEnumMap[instance.dayOfWeek],
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

const _$DayOfWeekEnumMap = {
  DayOfWeek.sunday: 'SUNDAY',
  DayOfWeek.monday: 'MONDAY',
  DayOfWeek.tuesday: 'TUESDAY',
  DayOfWeek.wednesday: 'WEDNESDAY',
  DayOfWeek.thursday: 'THURSDAY',
  DayOfWeek.friday: 'FRIDAY',
  DayOfWeek.saturday: 'SATURDAY',
};
