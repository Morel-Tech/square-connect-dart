import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/employees/employees-enums-converter.dart';

/// An [Employee] created in the Square Dashboard account of a business. Used by the [LaborApi].
class Employee {
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

  Employee(
      {this.id,
      this.firstName,
      this.lastName,
      this.emailAddress,
      this.phoneNumber,
      this.locationIds,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      emailAddress: json['email'],
      phoneNumber: json['phone_number'],
      locationIds: json['location_ids'] != null
          ? List<String>.from(json['location_ids'])
          : null,
      status: json['status'] != null
          ? getEmployeeStatusFromString(json['status'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (firstName != null) body['first_name'] = firstName;
    if (lastName != null) body['last_name'] = lastName;
    if (emailAddress != null) body['email'] = emailAddress;
    if (phoneNumber != null) body['phone_number'] = phoneNumber;
    if (locationIds != null) body['location_ids'] = locationIds;
    if (status != null) body['status'] = getStringFromEmployeeStatus(status);
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (updatedAt != null) body['updated_at'] = updatedAt.toString();

    return body;
  }
}
