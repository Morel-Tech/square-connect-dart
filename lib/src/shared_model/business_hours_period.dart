import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'business_hours_period.g.dart';

/// {@template business_hours_period}
/// An object representing a period of business hours.
/// {@endtemplate}
@JsonSerializable()
class BusinessHoursPeriod extends Equatable {
  /// {@macro business_hours_period}
  const BusinessHoursPeriod({
    required this.startLocalTime,
    required this.endLocalTime,
    required this.dayOfWeek,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [BusinessHoursPeriod]
  factory BusinessHoursPeriod.fromJson(Map<String, dynamic> json) =>
      _$BusinessHoursPeriodFromJson(json);

  /// Converts a [BusinessHoursPeriod] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$BusinessHoursPeriodToJson(this);

  /// The start time of the period.
  final SquareTimeOfDay startLocalTime;

  /// The end time of the period.
  final SquareTimeOfDay endLocalTime;

  /// The day of the week this period takes place in.
  final DayOfWeek dayOfWeek;

  @override
  List<Object> get props => [startLocalTime, endLocalTime, dayOfWeek];
}
