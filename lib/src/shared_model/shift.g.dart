// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      status: $enumDecode(_$ShiftStatusEnumMap, json['status']),
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
      'status': _$ShiftStatusEnumMap[instance.status]!,
      'version': instance.version,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$ShiftStatusEnumMap = {
  ShiftStatus.open: 'OPEN',
  ShiftStatus.closed: 'CLOSED',
};
