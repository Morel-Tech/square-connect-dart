import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'break_type.g.dart';

@JsonSerializable()
class BreakType extends Equatable {
  const BreakType({
    required this.id,
    required this.locationId,
    required this.name,
    required this.expectedDuration,
    required this.isPaid,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a [Map] to an [BreakType]
  factory BreakType.fromJson(Map<String, dynamic> json) =>
      _$BreakTypeFromJson(json);

  /// Converts a [BreakType] to a [Map]
  Map<String, dynamic> toJson() => _$BreakTypeToJson(this);

  final String id;
  final String locationId;
  final String name;
  final Duration expectedDuration;
  final bool isPaid;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      locationId,
      name,
      expectedDuration,
      isPaid,
      version,
      createdAt,
      updatedAt,
    ];
  }
}
