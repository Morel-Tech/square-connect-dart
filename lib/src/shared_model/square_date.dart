import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'square_date.g.dart';

/// An object representing a generic time of day devoid of date.
@JsonSerializable()
class SquareDate extends Equatable {
  const SquareDate({
    required this.year,
    required this.month,
    required this.day,
  });

  /// Converts a [Map] to an [SquareDate]
  factory SquareDate.fromJson(Map<String, dynamic> json) =>
      _$SquareDateFromJson(json);

  /// Converts a [SquareDate] to a [Map]
  Map<String, dynamic> toJson() => _$SquareDateToJson(this);

  /// Year of the date.
  final int year;

  /// Month in range 0-11.
  final int month;

  /// Days starting in range 0-31.
  final int day;

  @override
  List<Object?> get props => [year, month, day];
}
