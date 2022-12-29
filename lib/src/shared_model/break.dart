import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'break.g.dart';

@JsonSerializable()
class Break extends Equatable {
  const Break({
    required this.id,
    required this.startAt,
    required this.endAt,
    required this.breakTypeId,
    required this.name,
    required this.expectedDuration,
    required this.isPaid,
  });

  /// Converts a [Map] to an [Break]
  factory Break.fromJson(Map<String, dynamic> json) => _$BreakFromJson(json);

  /// Converts a [Break] to a [Map]
  Map<String, dynamic> toJson() => _$BreakToJson(this);

  final String id;
  final DateTime startAt;
  final DateTime endAt;
  final String breakTypeId;
  final String name;
  final Duration expectedDuration;
  final bool isPaid;

  @override
  List<Object?> get props {
    return [
      id,
      startAt,
      endAt,
      breakTypeId,
      name,
      expectedDuration,
      isPaid,
    ];
  }
}
