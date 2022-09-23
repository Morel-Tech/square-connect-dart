import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_event_redeem_reward.g.dart';

@JsonSerializable()
class LoyaltyEventRedeemReward extends Equatable {
  const LoyaltyEventRedeemReward({
    required this.loyaltyProgramId,
    this.orderId,
    this.rewardId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventRedeemReward]
  factory LoyaltyEventRedeemReward.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventRedeemRewardFromJson(json);

  /// Converts a [LoyaltyEventRedeemReward] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventRedeemRewardToJson(this);

  final String loyaltyProgramId;
  final String? orderId;
  final String? rewardId;

  @override
  List<Object?> get props => [loyaltyProgramId, orderId, rewardId];
}
