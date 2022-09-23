import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_delete_reward.g.dart';

@JsonSerializable()
class LoyaltyEventDeleteReward extends Equatable {
  const LoyaltyEventDeleteReward({
    required this.loyaltyProgramId,
    required this.points,
    this.rewardId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventDeleteReward]
  factory LoyaltyEventDeleteReward.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventDeleteRewardFromJson(json);

  /// Converts a [LoyaltyEventDeleteReward] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventDeleteRewardToJson(this);

  final String loyaltyProgramId;
  final int points;
  final String? rewardId;

  @override
  List<Object?> get props => [loyaltyProgramId, points, rewardId];
}
