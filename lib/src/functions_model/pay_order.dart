import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'pay_order.g.dart';

@JsonSerializable()
class PayOrderRequest extends Equatable {
  const PayOrderRequest({
    required this.idempotencyKey,
    this.orderVersion,
    this.paymentIds,
  });

  /// Converts a [Map] to an [PayOrderRequest]
  factory PayOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$PayOrderRequestFromJson(json);

  /// Converts a [PayOrderRequest] to a [Map]
  Map<String, dynamic> toJson() => _$PayOrderRequestToJson(this);

  final String idempotencyKey;
  final int? orderVersion;
  final List<String>? paymentIds;

  @override
  List<Object?> get props => [
        idempotencyKey,
        orderVersion,
        paymentIds,
      ];
}

@JsonSerializable()
class PayOrderResponse extends SquareResponse with EquatableMixin {
  const PayOrderResponse({
    this.order,
    List<SquareError>? errors,
  }) : super(errors: errors);

  /// Converts a [Map] to an [PayOrderResponse]
  factory PayOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$PayOrderResponseFromJson(json);

  /// Converts a [PayOrderResponse] to a [Map]
  Map<String, dynamic> toJson() => _$PayOrderResponseToJson(this);

  final Order? order;

  @override
  List<Object?> get props => [order, errors];
}
