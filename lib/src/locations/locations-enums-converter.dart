import 'package:square_connect/square_connect.dart';

const _mapStringtoLocationCapability = {
  'CREDIT_CARD_PROCESSING': LocationCapability.creditCardProcessing,
};

LocationCapability getLocationCapabilityFromString(String input) =>
    _mapStringtoLocationCapability[input];
String getStringFromLocationCapability(LocationCapability input) =>
    _mapStringtoLocationCapability.keys
        .singleWhere((value) => _mapStringtoLocationCapability[value] == input);

const _mapStringtoLocationStatus = {
  'ACTIVE': LocationStatus.active,
  'INACTIVE': LocationStatus.inactive,
};

LocationStatus getLocationStatusFromString(String input) =>
    _mapStringtoLocationStatus[input];
String getStringFromLocationStatus(LocationStatus input) =>
    _mapStringtoLocationStatus.keys
        .singleWhere((value) => _mapStringtoLocationStatus[value] == input);

const _mapStringtoLocationType = {
  'PHYSICAL': LocationType.physical,
  'MOBILE': LocationType.mobile,
};

LocationType getLocationTypeFromString(String input) =>
    _mapStringtoLocationType[input];
String getStringFromLocationType(LocationType input) =>
    _mapStringtoLocationType.keys
        .singleWhere((value) => _mapStringtoLocationType[value] == input);

const _mapStringtoDayOfWeek = {
  'SUN': DayOfWeek.sunday,
  'MON': DayOfWeek.monday,
  'TUE': DayOfWeek.tuesday,
  'WED': DayOfWeek.wednesday,
  'THU': DayOfWeek.thursday,
  'FRI': DayOfWeek.friday,
  'SAT': DayOfWeek.saturday,
};

DayOfWeek getDayOfWeekFromString(String input) => _mapStringtoDayOfWeek[input];
String getStringFromDayOfWeek(DayOfWeek input) => _mapStringtoDayOfWeek.keys
    .singleWhere((value) => _mapStringtoDayOfWeek[value] == input);