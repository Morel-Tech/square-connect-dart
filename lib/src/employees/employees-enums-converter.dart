import 'package:square_connect/square_connect.dart';

const _mapStringtoEmployeeStatus = {
  'ACTIVE': EmployeeStatus.active,
  'INACTIVE': EmployeeStatus.inactive,
};

EmployeeStatus getEmployeeStatusFromString(String input) => _mapStringtoEmployeeStatus[input];
String getStringFromEmployeeStatus(EmployeeStatus input) => _mapStringtoEmployeeStatus.keys
    .singleWhere((value) => _mapStringtoEmployeeStatus[value] == input);