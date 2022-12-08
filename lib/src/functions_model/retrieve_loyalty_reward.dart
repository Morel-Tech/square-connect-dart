import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_loyalty_reward.g.dart';

@JsonSerializable()
class RetrieveLoyaltyRewardResponse extends SquareResponse {
  const RetrieveLoyaltyRewardResponse({
    super.errors,
    this.reward,
  });

  /// Converts a [Map] to an [RetrieveLoyaltyRewardResponse]
  factory RetrieveLoyaltyRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveLoyaltyRewardResponseFromJson(json);

  /// Converts a [RetrieveLoyaltyRewardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveLoyaltyRewardResponseToJson(this);

  final LoyaltyReward? reward;

  @override
  List<Object?> get props => [errors, reward];
}
