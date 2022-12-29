import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'date_range.g.dart';

@JsonSerializable()
class DateRange extends Equatable {
  const DateRange({
    required this.startDate,
    required this.endDate,
  });

  /// Converts a [Map] to an [DateRange]
  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);

  /// Converts a [DateRange] to a [Map]
  Map<String, dynamic> toJson() => _$DateRangeToJson(this);

  final SquareDate startDate;
  final SquareDate endDate;

  @override
  List<Object?> get props => [startDate, endDate];
}
