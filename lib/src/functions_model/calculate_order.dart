import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'calculate_order.g.dart';

@JsonSerializable()
class CalculateOrderRequest extends Equatable {
  const CalculateOrderRequest({
    required this.order,
    this.proposedReward,
  });

  /// Converts a [Map] to an [CalculateOrderRequest]
  factory CalculateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CalculateOrderRequestFromJson(json);

  /// Converts a [CalculateOrderRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CalculateOrderRequestToJson(this);

  final Order order;
  final List<OrderReward>? proposedReward;

  @override
  List<Object?> get props => [
        order,
        proposedReward,
      ];
}

@JsonSerializable()
class CalculateOrderResponse extends SquareResponse {
  const CalculateOrderResponse({
    this.order,
    super.errors,
  });

  /// Converts a [Map] to an [CalculateOrderResponse]
  factory CalculateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CalculateOrderResponseFromJson(json);

  /// Converts a [CalculateOrderResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CalculateOrderResponseToJson(this);

  final Order? order;

  @override
  List<Object?> get props => [order, errors];
}
