import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_reward.g.dart';

@JsonSerializable()
class LoyaltyReward extends Equatable {
  const LoyaltyReward({
    required this.loyaltyAccountId,
    required this.rewardTierId,
    this.id,
    this.createdAt,
    this.orderId,
    this.points,
    this.redeemedAt,
    this.status, // Should be enum
    this.updatedAt,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyReward]
  factory LoyaltyReward.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyRewardFromJson(json);

  /// Converts a [LoyaltyReward] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyRewardToJson(this);

  final String? id;
  final String loyaltyAccountId;
  final String rewardTierId;
  final String? createdAt;
  final String? orderId;
  final int? points;
  final String? redeemedAt;
  final LoyaltyRewardStatus? status;
  final String? updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      loyaltyAccountId,
      rewardTierId,
      createdAt,
      orderId,
      points,
      redeemedAt,
      status,
      updatedAt,
    ];
  }
}

/// Read only The status of a loyalty reward.
enum LoyaltyRewardStatus {
  @JsonValue('ISSUED')
  issued,
  @JsonValue('REDEEMED')
  redeemed,
  @JsonValue('DELETED')
  deleted,
}
