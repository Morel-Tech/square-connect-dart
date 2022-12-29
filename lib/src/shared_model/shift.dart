import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'shift.g.dart';

@JsonSerializable()
class Shift extends Equatable {
  const Shift({
    required this.id,
    required this.employeeId,
    required this.locationId,
    required this.timezone,
    required this.startAt,
    required this.endAt,
    required this.wage,
    required this.breaks,
    required this.status,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [Shift]
  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);

  /// Converts a [Shift] to a [Map]
  Map<String, dynamic> toJson() => _$ShiftToJson(this);

  final String id;
  final String employeeId;
  final String locationId;
  final String timezone;
  final DateTime startAt;
  final DateTime endAt;
  final ShiftWage wage;
  final List<Break> breaks;
  final ShiftStatus status;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      employeeId,
      locationId,
      timezone,
      startAt,
      endAt,
      wage,
      breaks,
      status,
      version,
      createdAt,
      updatedAt,
    ];
  }
}
