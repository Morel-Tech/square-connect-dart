import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'employee_wage.g.dart';

@JsonSerializable()
class EmployeeWage extends Equatable {
  const EmployeeWage({
    required this.id,
    required this.employeeId,
    required this.title,
    required this.hourlyRate,
  });

  /// Converts a [Map] to an [EmployeeWage]
  factory EmployeeWage.fromJson(Map<String, dynamic> json) =>
      _$EmployeeWageFromJson(json);

  /// Converts a [EmployeeWage] to a [Map]
  Map<String, dynamic> toJson() => _$EmployeeWageToJson(this);

  final String id;
  final String employeeId;
  final String title;
  final Money hourlyRate;

  @override
  List<Object?> get props => [id, employeeId, title, hourlyRate];
}
