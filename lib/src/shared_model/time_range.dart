import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_range.g.dart';

@JsonSerializable()
class TimeRange extends Equatable {
  const TimeRange({
    required this.startAt,
    required this.endAt,
  });

  /// Converts a [Map] to an [TimeRange]
  factory TimeRange.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFromJson(json);

  /// Converts a [TimeRange] to a [Map]
  Map<String, dynamic> toJson() => _$TimeRangeToJson(this);

  final DateTime startAt;
  final DateTime endAt;

  @override
  List<Object?> get props => [startAt, endAt];
}
