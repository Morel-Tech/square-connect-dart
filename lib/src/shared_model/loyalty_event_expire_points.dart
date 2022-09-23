import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_expire_points.g.dart';

@JsonSerializable()
class LoyaltyEventExpirePoints extends Equatable {
  const LoyaltyEventExpirePoints({
    required this.loyaltyProgramId,
    required this.points,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventExpirePoints]
  factory LoyaltyEventExpirePoints.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventExpirePointsFromJson(json);

  /// Converts a [LoyaltyEventExpirePoints] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventExpirePointsToJson(this);

  final String loyaltyProgramId;
  final int points;

  @override
  List<Object?> get props => [loyaltyProgramId, points];
}
