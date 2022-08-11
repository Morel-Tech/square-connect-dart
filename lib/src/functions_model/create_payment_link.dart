import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_payment_link.g.dart';

@JsonSerializable()
class CreatePaymentLinkRequest extends Equatable {
  const CreatePaymentLinkRequest({
    this.idempotencyKey,
    this.description,
    this.quickPay,
    this.order,
    this.checkoutOptions,
    this.prePopulatedData,
    this.source,
    this.paymentNote,
  });

  /// Converts a [Map] to an [CreatePaymentLinkRequest]
  factory CreatePaymentLinkRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentLinkRequestFromJson(json);

  /// Converts a [CreatePaymentLinkRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreatePaymentLinkRequestToJson(this);

  final String? idempotencyKey;
  final String? description;
  final QuickPay? quickPay;
  final Order? order;
  final CheckoutOptions? checkoutOptions;
  final PrePopulatedData? prePopulatedData;
  final String? source;
  final String? paymentNote;

  @override
  List<Object?> get props => [
        idempotencyKey,
        description,
        quickPay,
        order,
        checkoutOptions,
        prePopulatedData,
        source,
        paymentNote
      ];
}

@JsonSerializable()
class CreatePaymentLinkResponse extends SquareResponse {
  const CreatePaymentLinkResponse({
    super.errors,
    this.paymentLink,
  });

  /// Converts a [Map] to an [CreatePaymentLinkResponse]
  factory CreatePaymentLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentLinkResponseFromJson(json);

  /// Converts a [CreatePaymentLinkResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreatePaymentLinkResponseToJson(this);

  final PaymentLink? paymentLink;

  @override
  List<Object?> get props => [errors, paymentLink];
}
