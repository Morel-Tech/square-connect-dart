// ignore_for_file: unnecessary_raw_strings
import 'package:equatable/equatable.dart';

/// {@template square_time_of_day}
/// An object representing a generic time of day devoid of date.
/// {@endtemplate}
class SquareTimeOfDay extends Equatable {
  /// {@macro square_time_of_day}
  const SquareTimeOfDay({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  /// Converts a [Map] to an [SquareTimeOfDay]
  factory SquareTimeOfDay.fromJson(String input) {
    if (RegExp(r'[0-9][0-9]:[0-9][0-9]:[0-9][0-9]').hasMatch(input)) {
      return SquareTimeOfDay(
        hours: int.parse(input.substring(0, 2)),
        minutes: int.parse(input.substring(3, 5)),
        seconds: int.parse(input.substring(6)),
      );
    } else if (RegExp(r'[0-9][0-9]:[0-9][0-9]').hasMatch(input)) {
      return SquareTimeOfDay(
        hours: int.parse(input.substring(0, 2)),
        minutes: int.parse(input.substring(3, 5)),
        seconds: 0,
      );
    } else {
      throw ArgumentError.value(input, input, 'input is invalid time of day');
    }
  }

  /// Converts a [SquareTimeOfDay] to a [Map]
  String toJson() =>
      // ignore: lines_longer_than_80_chars
      '${hours < 10 ? '0$hours' : hours}:${minutes < 10 ? '0$minutes' : minutes}:${seconds < 10 ? '0$seconds' : seconds}';

  /// Hours starting in ranges 0-23.
  final int hours;

  /// Minutes starting in ranges 0-59.
  final int minutes;

  /// Seconds starting in ranges 0-59.
  final int seconds;

  @override
  List<Object?> get props => [hours, minutes, seconds];
}
