import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'workweek_config.g.dart';

@JsonSerializable()
class WorkweekConfig extends Equatable {
  const WorkweekConfig({
    required this.id,
    required this.startOfWeek,
    required this.startOfDayLocalTime,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [WorkweekConfig]
  factory WorkweekConfig.fromJson(Map<String, dynamic> json) =>
      _$WorkweekConfigFromJson(json);

  /// Converts a [WorkweekConfig] to a [Map]
  Map<String, dynamic> toJson() => _$WorkweekConfigToJson(this);

  final String id;
  final DayOfWeek startOfWeek;
  final SquareTimeOfDay startOfDayLocalTime;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      startOfWeek,
      startOfDayLocalTime,
      version,
      createdAt,
      updatedAt,
    ];
  }
}
