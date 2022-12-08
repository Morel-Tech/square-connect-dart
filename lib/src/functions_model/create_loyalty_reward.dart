import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_loyalty_reward.g.dart';

@JsonSerializable()
class CreateLoyaltyRewardRequest extends Equatable {
  const CreateLoyaltyRewardRequest({
    required this.reward,
    required this.idempotencyKey,
  });

  /// Converts a [Map] to an [CreateLoyaltyRewardRequest]
  factory CreateLoyaltyRewardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateLoyaltyRewardRequestFromJson(json);

  /// Converts a [CreateLoyaltyRewardRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateLoyaltyRewardRequestToJson(this);

  final LoyaltyReward reward;
  final String idempotencyKey;

  @override
  List<Object?> get props => [reward, idempotencyKey];
}

@JsonSerializable()
class CreateLoyaltyRewardResponse extends SquareResponse {
  const CreateLoyaltyRewardResponse({
    super.errors,
    this.reward,
  });

  /// Converts a [Map] to an [CreateLoyaltyRewardResponse]
  factory CreateLoyaltyRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLoyaltyRewardResponseFromJson(json);

  /// Converts a [CreateLoyaltyRewardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateLoyaltyRewardResponseToJson(this);

  final LoyaltyReward? reward;

  @override
  List<Object?> get props => [errors, reward];
}
