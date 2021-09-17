import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'square_time_of_day.g.dart';

/// {@template square_time_of_day}
/// An object representing a generic time of day devoid of date.
/// {@endtemplate}
@JsonSerializable()
class SquareTimeOfDay extends Equatable {
  /// {@macro square_time_of_day}
  const SquareTimeOfDay({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  /// Converts a [Map] to an [SquareTimeOfDay]
  factory SquareTimeOfDay.fromJson(Map<String, dynamic> json) =>
      _$SquareTimeOfDayFromJson(json);

  /// Converts a [SquareTimeOfDay] to a [Map]
  Map<String, dynamic> toJson() => _$SquareTimeOfDayToJson(this);

  /// Hours starting in ranges 0-23.
  final int hours;

  /// Minutes starting in ranges 0-59.
  final int minutes;

  /// Seconds starting in ranges 0-59.
  final int seconds;

  @override
  List<Object> get props => [hours, minutes, seconds];
}
