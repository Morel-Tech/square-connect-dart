import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_event.g.dart';

@JsonSerializable()
class LoyaltyEvent extends Equatable {
  const LoyaltyEvent({
    required this.id,
    required this.createdAt,
    required this.loyaltyAccountId,
    required this.source,
    required this.type,
    this.locationId,
    this.accumulatePoints,
    this.accumulatePromotionPoints,
    this.adjustPoints,
    this.createReward,
    this.deleteReward,
    this.expirePoints,
    this.otherEvent,
    this.redeemReward,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEvent]
  factory LoyaltyEvent.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventFromJson(json);

  /// Converts a [LoyaltyEvent] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventToJson(this);

  final String id;
  final DateTime createdAt;
  final String loyaltyAccountId;
  final String source;
  final String type;
  final String? locationId;
  final LoyaltyEventAccumulatePoints? accumulatePoints;
  final LoyaltyEventAccumulatePromotionPoints? accumulatePromotionPoints;
  final LoyaltyEventAdjustPoints? adjustPoints;
  final LoyaltyEventCreateReward? createReward;
  final LoyaltyEventDeleteReward? deleteReward;
  final LoyaltyEventExpirePoints? expirePoints;
  final LoyaltyEventOther? otherEvent;
  final LoyaltyEventRedeemReward? redeemReward;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        loyaltyAccountId,
        source,
        type,
        locationId,
        accumulatePoints,
        accumulatePromotionPoints,
        adjustPoints,
        createReward,
        deleteReward,
        expirePoints,
        otherEvent,
        redeemReward,
      ];
}
