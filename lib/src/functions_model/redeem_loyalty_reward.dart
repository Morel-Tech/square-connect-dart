import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'redeem_loyalty_reward.g.dart';

@JsonSerializable()
class RedeemLoyaltyRewardRequest extends Equatable {
  const RedeemLoyaltyRewardRequest({
    required this.idempotencyKey,
    required this.locationId,
  });

  /// Converts a [Map] to an [RedeemLoyaltyRewardRequest]
  factory RedeemLoyaltyRewardRequest.fromJson(Map<String, dynamic> json) =>
      _$RedeemLoyaltyRewardRequestFromJson(json);

  /// Converts a [RedeemLoyaltyRewardRequest] to a [Map]
  Map<String, dynamic> toJson() => _$RedeemLoyaltyRewardRequestToJson(this);

  final String idempotencyKey;
  final String locationId;

  @override
  List<Object?> get props => [idempotencyKey, locationId];
}

@JsonSerializable()
class RedeemLoyaltyRewardResponse extends SquareResponse {
  const RedeemLoyaltyRewardResponse({
    super.errors,
    this.event,
  });

  /// Converts a [Map] to an [RedeemLoyaltyRewardResponse]
  factory RedeemLoyaltyRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$RedeemLoyaltyRewardResponseFromJson(json);

  /// Converts a [RedeemLoyaltyRewardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RedeemLoyaltyRewardResponseToJson(this);

  final LoyaltyEvent? event;

  @override
  List<Object?> get props => [errors, event];
}
