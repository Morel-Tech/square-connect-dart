import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'delete_loyalty_reward.g.dart';

@JsonSerializable()
class DeleteLoyaltyReward extends SquareResponse {
  const DeleteLoyaltyReward({
    super.errors,
  });

  /// Converts a [Map] to an [DeleteLoyaltyReward]
  factory DeleteLoyaltyReward.fromJson(Map<String, dynamic> json) =>
      _$DeleteLoyaltyRewardFromJson(json);

  /// Converts a [DeleteLoyaltyReward] to a [Map]
  Map<String, dynamic> toJson() => _$DeleteLoyaltyRewardToJson(this);

  @override
  List<Object?> get props => [errors];
}
