// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessHours _$BusinessHoursFromJson(Map<String, dynamic> json) =>
    BusinessHours(
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) => BusinessHoursPeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BusinessHoursToJson(BusinessHours instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('periods', instance.periods?.map((e) => e.toJson()).toList());
  return val;
}
