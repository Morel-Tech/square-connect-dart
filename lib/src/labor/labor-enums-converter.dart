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

const _mapStringtoShiftSortField = {
  'START_AT': ShiftSortField.startAt,
  'END_AT': ShiftSortField.endAt,
  'CREATED_AT': ShiftSortField.createdAt,
  'UPDATED_AT': ShiftSortField.updatedAt,
};

ShiftSortField getShiftSortFieldFromString(String input) =>
    _mapStringtoShiftSortField[input];
String getStringFromShiftSortField(ShiftSortField input) =>
    _mapStringtoShiftSortField.keys
        .singleWhere((value) => _mapStringtoShiftSortField[value] == input);

const _mapStringtoShiftWorkdayMatcher = {
  'START_AT': ShiftWorkdayMatcher.startAt,
  'END_AT': ShiftWorkdayMatcher.endAt,
  'INTERSECTION': ShiftWorkdayMatcher.intersection,
};

ShiftWorkdayMatcher getShiftWorkdayMatcherFromString(String input) =>
    _mapStringtoShiftWorkdayMatcher[input];
String getStringFromShiftWorkdayMatcher(ShiftWorkdayMatcher input) =>
    _mapStringtoShiftWorkdayMatcher.keys
        .singleWhere((value) => _mapStringtoShiftWorkdayMatcher[value] == input);