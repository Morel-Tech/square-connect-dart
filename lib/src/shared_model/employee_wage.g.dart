// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_wage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeWage _$EmployeeWageFromJson(Map<String, dynamic> json) => EmployeeWage(
      id: json['id'] as String,
      employeeId: json['employee_id'] as String,
      title: json['title'] as String,
      hourlyRate: Money.fromJson(json['hourly_rate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeWageToJson(EmployeeWage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'title': instance.title,
      'hourly_rate': instance.hourlyRate.toJson(),
    };
