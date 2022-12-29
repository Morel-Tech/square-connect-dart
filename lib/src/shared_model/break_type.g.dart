// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'break_type.dart';

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
