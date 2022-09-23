import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_create_reward.g.dart';

@JsonSerializable()
class LoyaltyEventCreateReward extends Equatable {
  const LoyaltyEventCreateReward({
    required this.loyaltyProgramId,
    required this.points,
    this.rewardId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventCreateReward]
  factory LoyaltyEventCreateReward.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventCreateRewardFromJson(json);

  /// Converts a [LoyaltyEventCreateReward] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventCreateRewardToJson(this);

  final String loyaltyProgramId;
  final int points;
  final String? rewardId;

  @override
  List<Object?> get props => [loyaltyProgramId, points, rewardId];
}
