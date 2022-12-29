// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'break.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
