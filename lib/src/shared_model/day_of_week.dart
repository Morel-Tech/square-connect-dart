import 'package:json_annotation/json_annotation.dart';

/// Indicates a day of a 7 day week.
enum DayOfWeek {
  @JsonValue('SUN')
  sunday,
  @JsonValue('MON')
  monday,
  @JsonValue('TUE')
  tuesday,
  @JsonValue('WED')
  wednesday,
  @JsonValue('THU')
  thursday,
  @JsonValue('FRI')
  friday,
  @JsonValue('SAT')
  saturday,
}
