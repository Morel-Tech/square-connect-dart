import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_accumulate_promotion_points.g.dart';

@JsonSerializable()
class LoyaltyEventAccumulatePromotionPoints extends Equatable {
  const LoyaltyEventAccumulatePromotionPoints({
    required this.orderId,
    required this.points,
    this.loyaltyProgramId,
    this.loyaltyPromotionId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [LoyaltyEventAccumulatePromotionPoints]
  factory LoyaltyEventAccumulatePromotionPoints.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoyaltyEventAccumulatePromotionPointsFromJson(json);

  /// Converts a [LoyaltyEventAccumulatePromotionPoints] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$LoyaltyEventAccumulatePromotionPointsToJson(this);

  final String orderId;
  final int points;
  final String? loyaltyProgramId;
  final String? loyaltyPromotionId;

  @override
  List<Object?> get props =>
      [orderId, points, loyaltyProgramId, loyaltyPromotionId];
}
