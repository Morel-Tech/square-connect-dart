import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_reward.g.dart';

@JsonSerializable()
class OrderReward extends Equatable {
  const OrderReward({
    required this.id,
    required this.rewardTierId,
  });

  /// Converts a [Map] to an [OrderReward]
  factory OrderReward.fromJson(Map<String, dynamic> json) =>
      _$OrderRewardFromJson(json);

  /// Converts a [OrderReward] to a [Map]
  Map<String, dynamic> toJson() => _$OrderRewardToJson(this);

  final String id;
  final String rewardTierId;

  @override
  List<Object?> get props {
    return [
      id,
      rewardTierId,
    ];
  }
}
