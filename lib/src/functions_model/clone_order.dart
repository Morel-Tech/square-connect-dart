import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'clone_order.g.dart';

@JsonSerializable()
class CloneOrderRequest extends Equatable {
  const CloneOrderRequest({
    required this.orderId,
    this.version,
    this.idempotencyKey,
  });

  /// Converts a [Map] to an [CloneOrderRequest]
  factory CloneOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CloneOrderRequestFromJson(json);

  /// Converts a [CloneOrderRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CloneOrderRequestToJson(this);

  /// The ID of the order to clone.
  final String orderId;

  /// If a version is provided, it must match the latest stored version of the
  /// order to clone. If a version is not provided, the API clones the latest
  /// version.
  final int? version;

  /// A value you specify that uniquely identifies this clone request.
  ///
  /// If you are unsure whether a particular order was cloned successfully,
  /// you can reattempt the call with the same idempotency key without
  /// worrying about creating duplicate cloned orders. The originally
  /// cloned order is returned.
  final String? idempotencyKey;

  @override
  List<Object?> get props => [];
}

@JsonSerializable()
class CloneOrderResponse extends SquareResponse {
  const CloneOrderResponse({this.order, super.errors});

  /// Converts a [Map] to an [CloneOrderResponse]
  factory CloneOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CloneOrderResponseFromJson(json);

  /// Converts a [CloneOrderResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CloneOrderResponseToJson(this);

  /// The cloned order.
  final Order? order;

  @override
  List<Object?> get props => [order, errors];
}
