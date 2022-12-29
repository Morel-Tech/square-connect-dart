// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_wage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftWage _$ShiftWageFromJson(Map<String, dynamic> json) => ShiftWage(
      title: json['title'] as String,
      hourlyRate: Money.fromJson(json['hourly_rate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShiftWageToJson(ShiftWage instance) => <String, dynamic>{
      'title': instance.title,
      'hourly_rate': instance.hourlyRate.toJson(),
    };
