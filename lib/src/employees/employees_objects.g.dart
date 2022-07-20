// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      emailAddress: json['email_address'] as String,
      phoneNumber: json['phone_number'] as String,
      locationIds: (json['location_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: $enumDecode(_$EmployeeStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email_address': instance.emailAddress,
      'phone_number': instance.phoneNumber,
      'location_ids': instance.locationIds,
      'status': _$EmployeeStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$EmployeeStatusEnumMap = {
  EmployeeStatus.active: 'ACTIVE',
  EmployeeStatus.inactive: 'INACTIVE',
};
