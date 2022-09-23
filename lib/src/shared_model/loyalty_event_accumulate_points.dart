import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_accumulate_points.g.dart';

@JsonSerializable()
class LoyaltyEventAccumulatePoints extends Equatable {
  const LoyaltyEventAccumulatePoints({
    this.loyaltyProgramId,
    this.orderId,
    this.points,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventAccumulatePoints]
  factory LoyaltyEventAccumulatePoints.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventAccumulatePointsFromJson(json);

  /// Converts a [LoyaltyEventAccumulatePoints] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventAccumulatePointsToJson(this);

  final String? loyaltyProgramId;
  final String? orderId;
  final int? points;

  @override
  List<Object?> get props => [loyaltyProgramId, orderId, points];
}
