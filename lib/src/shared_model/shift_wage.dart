import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'shift_wage.g.dart';

@JsonSerializable()
class ShiftWage extends Equatable {
  const ShiftWage({
    required this.title,
    required this.hourlyRate,
  });

  /// Converts a [Map] to an [ShiftWage]
  factory ShiftWage.fromJson(Map<String, dynamic> json) =>
      _$ShiftWageFromJson(json);

  /// Converts a [ShiftWage] to a [Map]
  Map<String, dynamic> toJson() => _$ShiftWageToJson(this);

  final String title;
  final Money hourlyRate;

  @override
  List<Object?> get props => [title, hourlyRate];
}
