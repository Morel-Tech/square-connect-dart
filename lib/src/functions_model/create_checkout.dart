import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_checkout.g.dart';

@JsonSerializable()
class CreateCheckoutRequest extends Equatable {
  const CreateCheckoutRequest({
    required this.idempotencyKey,
    required this.order,
    this.askForShippingAddress,
    this.merchantSupportEmail,
    this.prePopulateBuyerEmail,
    this.prePopulateShippingAddress,
    this.redirectUrl,
    this.additionalRecipients,
    this.note,
  });

  /// Converts a [Map] to an [CreateCheckoutRequest]
  factory CreateCheckoutRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCheckoutRequestFromJson(json);

  /// Converts a [CreateCheckoutRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCheckoutRequestToJson(this);

  final String idempotencyKey;
  final CreateCheckoutRequestOrder order;
  final bool? askForShippingAddress;
  final String? merchantSupportEmail;
  final String? prePopulateBuyerEmail;
  final Address? prePopulateShippingAddress;
  final String? redirectUrl;
  final List<ChargeRequestAdditionalRecipient>? additionalRecipients;
  final String? note;

  @override
  List<Object?> get props {
    return [
      idempotencyKey,
      order,
      askForShippingAddress,
      merchantSupportEmail,
      prePopulateBuyerEmail,
      prePopulateShippingAddress,
      redirectUrl,
      additionalRecipients,
      note,
    ];
  }
}

@JsonSerializable()
class CreateCheckoutRequestOrder extends Equatable {
  const CreateCheckoutRequestOrder({
    required this.idempotencyKey,
    required this.order,
  });

  /// Converts a [Map] to an [CreateCheckoutRequestOrder]
  factory CreateCheckoutRequestOrder.fromJson(Map<String, dynamic> json) =>
      _$CreateCheckoutRequestOrderFromJson(json);

  /// Converts a [CreateCheckoutRequestOrder] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCheckoutRequestOrderToJson(this);

  final String idempotencyKey;
  final Order order;

  @override
  List<Object?> get props {
    return [idempotencyKey, order];
  }
}

@JsonSerializable()
class CreateCheckoutResponse extends SquareResponse {
  const CreateCheckoutResponse({this.checkout, super.errors});

  /// Converts a [Map] to an [CreateCheckoutResponse]
  factory CreateCheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCheckoutResponseFromJson(json);

  /// Converts a [CreateCheckoutResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCheckoutResponseToJson(this);

  final Checkout? checkout;

  @override
  List<Object?> get props => [checkout, errors];
}
