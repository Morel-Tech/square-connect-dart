import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'adjust_loyalty_points.g.dart';

@JsonSerializable()
class AdjustLoyaltyPointsRequest extends Equatable {
  const AdjustLoyaltyPointsRequest({
    required this.idempotencyKey,
    required this.adjustPoints,
    this.allowNegativeBalance,
  });

  /// Converts a [Map] to an [AdjustLoyaltyPointsRequest]
  factory AdjustLoyaltyPointsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdjustLoyaltyPointsRequestFromJson(json);

  /// Converts a [AdjustLoyaltyPointsRequest] to a [Map]
  Map<String, dynamic> toJson() => _$AdjustLoyaltyPointsRequestToJson(this);

  final String idempotencyKey;
  final LoyaltyEventAdjustPoints adjustPoints;
  final bool? allowNegativeBalance;

  @override
  List<Object?> get props => [
        idempotencyKey,
        adjustPoints,
        allowNegativeBalance,
      ];
}

@JsonSerializable()
class AdjustLoyaltyPointsResponse extends SquareResponse {
  const AdjustLoyaltyPointsResponse({super.errors, this.event});

  /// Converts a [Map] to an [AdjustLoyaltyPointsResponse]
  factory AdjustLoyaltyPointsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdjustLoyaltyPointsResponseFromJson(json);

  /// Converts a [AdjustLoyaltyPointsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$AdjustLoyaltyPointsResponseToJson(this);

  final LoyaltyEvent? event;

  @override
  List<Object?> get props => [errors, event];
}
