import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'shift_workday.g.dart';

@JsonSerializable()
class ShiftWorkday extends Equatable {
  const ShiftWorkday({
    required this.dateRange,
    required this.matchShiftsBy,
    required this.defaultTimezone,
  });

  /// Converts a [Map] to an [ShiftWorkday]
  factory ShiftWorkday.fromJson(Map<String, dynamic> json) =>
      _$ShiftWorkdayFromJson(json);

  /// Converts a [ShiftWorkday] to a [Map]
  Map<String, dynamic> toJson() => _$ShiftWorkdayToJson(this);

  final DateRange dateRange;
  final ShiftWorkdayMatcher matchShiftsBy;
  final String defaultTimezone;

  @override
  List<Object?> get props => [dateRange, matchShiftsBy, defaultTimezone];
}
