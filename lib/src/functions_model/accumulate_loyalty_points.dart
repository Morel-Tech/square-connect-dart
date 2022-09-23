import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'accumulate_loyalty_points.g.dart';

@JsonSerializable()
class AccumulateLoyaltyPointsRequest extends Equatable {
  const AccumulateLoyaltyPointsRequest({
    required this.accumulatePoints,
    required this.idempotencyKey,
    required this.locationId,
  });

  /// Converts a [Map] to an [AccumulateLoyaltyPointsRequest]
  factory AccumulateLoyaltyPointsRequest.fromJson(Map<String, dynamic> json) =>
      _$AccumulateLoyaltyPointsRequestFromJson(json);

  /// Converts a [AccumulateLoyaltyPointsRequest] to a [Map]
  Map<String, dynamic> toJson() => _$AccumulateLoyaltyPointsRequestToJson(this);

  final LoyaltyEventAccumulatePoints accumulatePoints;
  final String idempotencyKey;
  final String locationId;

  @override
  List<Object?> get props => [accumulatePoints, idempotencyKey, locationId];
}

@JsonSerializable()
class AccumulateLoyaltyPointsResponse extends SquareResponse {
  const AccumulateLoyaltyPointsResponse({super.errors, this.events});

  /// Converts a [Map] to an [AccumulateLoyaltyPointsResponse]
  factory AccumulateLoyaltyPointsResponse.fromJson(Map<String, dynamic> json) =>
      _$AccumulateLoyaltyPointsResponseFromJson(json);

  /// Converts a [AccumulateLoyaltyPointsResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$AccumulateLoyaltyPointsResponseToJson(this);

  final List<LoyaltyEvent>? events;

  @override
  List<Object?> get props => [errors, events];
}
