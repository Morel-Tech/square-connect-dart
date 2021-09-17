import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'employees-objects.g.dart';

/// An [Employee] created in the Square Dashboard account of a business. Used
/// by the LaborApi.
@JsonSerializable()
class Employee extends Equatable {
  const Employee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.phoneNumber,
    required this.locationIds,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [Employee]
  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  /// Converts a [Employee] to a [Map]
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  /// The [Employee]'s unique id in guid form.
  final String id;

  /// The [Employee]'s first name.
  final String firstName;

  /// The [Employee]'s last name.
  final String lastName;

  /// The [Employee]'s email address.
  final String emailAddress;

  /// The [Employee]'s phone number.
  final String phoneNumber;

  /// The list of Locations (by id) that the [Employee] has access to.
  final List<String> locationIds;

  /// Whether the [Employee] is active or inactive.
  final EmployeeStatus status;

  /// When the [Employee]'s was created.
  final DateTime createdAt;

  /// When the [Employee]'s was last updated.
  final DateTime updatedAt;

  @override
  List<Object> get props {
    return [
      id,
      firstName,
      lastName,
      emailAddress,
      phoneNumber,
      locationIds,
      status,
      createdAt,
      updatedAt,
    ];
  }
}
