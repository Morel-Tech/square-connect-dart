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
      dayOfWeek: _$enumDecodeNullable(_$DayOfWeekEnumMap, json['day_of_week']),
    );

Map<String, dynamic> _$BusinessHoursPeriodToJson(
        BusinessHoursPeriod instance) =>
    <String, dynamic>{
      'start_local_time': instance.startLocalTime?.toJson(),
      'end_local_time': instance.endLocalTime?.toJson(),
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$DayOfWeekEnumMap = {
  DayOfWeek.sunday: 'SUN',
  DayOfWeek.monday: 'MON',
  DayOfWeek.tuesday: 'TUE',
  DayOfWeek.wednesday: 'WED',
  DayOfWeek.thursday: 'THU',
  DayOfWeek.friday: 'FRI',
  DayOfWeek.saturday: 'SAT',
};
