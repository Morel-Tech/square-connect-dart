import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'update_order.g.dart';

@JsonSerializable()
class UpdateOrderResponse extends SquareResponse {
  const UpdateOrderResponse({
    this.order,
    List<SquareError>? errors,
  }) : super(errors: errors);

  /// Converts a [Map] to an [UpdateOrderResponse]
  factory UpdateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderResponseFromJson(json);

  /// Converts a [UpdateOrderResponse] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateOrderResponseToJson(this);

  final Order? order;

  @override
  List<Object?> get props => [order, errors];
}

@JsonSerializable()
class UpdateOrderRequest extends Equatable {
  const UpdateOrderRequest({
    this.order,
    this.fieldsToClear,
    this.idempotencyKey,
  });

  /// Converts a [Map] to an [UpdateOrderRequest]
  factory UpdateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderRequestFromJson(json);

  /// Converts a [UpdateOrderRequest] to a [Map]
  Map<String, dynamic> toJson() => _$UpdateOrderRequestToJson(this);

  final Order? order;
  final List<String>? fieldsToClear;
  final String? idempotencyKey;

  @override
  List<Object?> get props => [order, fieldsToClear, idempotencyKey];
}
