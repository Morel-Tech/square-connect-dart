import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_adjust_points.g.dart';

@JsonSerializable()
class LoyaltyEventAdjustPoints extends Equatable {
  const LoyaltyEventAdjustPoints({
    required this.points,
    this.loyaltyProgramId,
    this.reason,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventAdjustPoints]
  factory LoyaltyEventAdjustPoints.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventAdjustPointsFromJson(json);

  /// Converts a [LoyaltyEventAdjustPoints] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventAdjustPointsToJson(this);

  final int points;
  final String? loyaltyProgramId;
  final String? reason;

  @override
  List<Object?> get props => [points, loyaltyProgramId, reason];
}
