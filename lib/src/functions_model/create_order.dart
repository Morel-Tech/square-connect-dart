import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_order.g.dart';

@JsonSerializable()
class CreateOrderResponse extends SquareResponse {
  const CreateOrderResponse({
    this.order,
    super.errors,
  });

  /// Converts a [Map] to an [CreateOrderResponse]
  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseFromJson(json);

  /// Converts a [CreateOrderResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateOrderResponseToJson(this);

  final Order? order;

  @override
  List<Object?> get props => [order, errors];
}

@JsonSerializable()
class CreateOrderRequest extends Equatable {
  const CreateOrderRequest({
    required this.order,
    required this.idempotencyKey,
  });

  /// Converts a [Map] to an [CreateOrderRequest]
  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestFromJson(json);

  /// Converts a [CreateOrderRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);

  final Order order;
  final String idempotencyKey;

  @override
  List<Object> get props => [order, idempotencyKey];
}
