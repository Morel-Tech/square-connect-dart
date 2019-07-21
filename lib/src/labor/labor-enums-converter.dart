import 'package:square_connect/square_connect.dart';

const _mapStringtoShiftStatus = {
  'OPEN': ShiftStatus.open,
  'CLOSED': ShiftStatus.closed,
};

ShiftStatus getShiftStatusFromString(String input) =>
    _mapStringtoShiftStatus[input];
String getStringFromShiftStatus(ShiftStatus input) =>
    _mapStringtoShiftStatus.keys
        .singleWhere((value) => _mapStringtoShiftStatus[value] == input);
