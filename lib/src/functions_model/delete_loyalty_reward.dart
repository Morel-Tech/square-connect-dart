import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'delete_loyalty_reward.g.dart';

@JsonSerializable()
class DeleteLoyaltyRewardResponse extends SquareResponse {
  const DeleteLoyaltyRewardResponse({
    super.errors,
  });

  /// Converts a [Map] to an [DeleteLoyaltyRewardResponse]
  factory DeleteLoyaltyRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteLoyaltyRewardResponseFromJson(json);

  /// Converts a [DeleteLoyaltyRewardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$DeleteLoyaltyRewardResponseToJson(this);

  @override
  List<Object?> get props => [errors];
}
