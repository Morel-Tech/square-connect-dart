import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'calculate_loyalty_points.g.dart';

@JsonSerializable()
class CalculateLoyaltyPointsRequest extends Equatable {
  const CalculateLoyaltyPointsRequest({
    this.orderId,
    this.transactionAmountMoney,
    this.loyaltyAccountId,
  });

  /// Converts a [Map] to an [CalculateLoyaltyPointsRequest]
  factory CalculateLoyaltyPointsRequest.fromJson(Map<String, dynamic> json) =>
      _$CalculateLoyaltyPointsRequestFromJson(json);

  /// Converts a [CalculateLoyaltyPointsRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CalculateLoyaltyPointsRequestToJson(this);

  final int? orderId;
  final Money? transactionAmountMoney;
  final String? loyaltyAccountId;

  @override
  List<Object?> get props =>
      [orderId, transactionAmountMoney, loyaltyAccountId];
}

@JsonSerializable()
class CalculateLoyaltyPointsResponse extends SquareResponse {
  const CalculateLoyaltyPointsResponse({
    super.errors,
    this.points,
    this.promotionPoints,
  });

  /// Converts a [Map] to an [CalculateLoyaltyPointsResponse]
  factory CalculateLoyaltyPointsResponse.fromJson(Map<String, dynamic> json) =>
      _$CalculateLoyaltyPointsResponseFromJson(json);

  /// Converts a [CalculateLoyaltyPointsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CalculateLoyaltyPointsResponseToJson(this);

  final int? points;
  final int? promotionPoints;

  @override
  List<Object?> get props => [errors, points, promotionPoints];
}
