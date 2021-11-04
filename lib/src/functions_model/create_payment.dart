import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'create_payment.g.dart';

@JsonSerializable()
class CreatePaymentRequest extends Equatable {
  const CreatePaymentRequest({
    required this.sourceId,
    required this.idempotencyKey,
    required this.amountMoney,
    this.tipMoney,
    this.appFeeMoney,
    this.delayDuration,
    this.autocomplete,
    this.orderId,
    this.customerId,
    this.locationId,
    this.teamMemberId,
    this.referenceId,
    this.verificationToken,
    this.acceptPartialAuthorization,
    this.buyerEmailAddress,
    this.billingAddress,
    this.shippingAddress,
    this.note,
    this.statementDescriptionIdentifier,
  });

  /// Converts a [Map] to an [CreatePaymentRequest]
  factory CreatePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentRequestFromJson(json);

  /// Converts a [CreatePaymentRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreatePaymentRequestToJson(this);

  final String sourceId;
  final String idempotencyKey;
  final Money amountMoney;
  final Money? tipMoney;
  final Money? appFeeMoney;
  final String? delayDuration;
  final bool? autocomplete;
  final String? orderId;
  final String? customerId;
  final String? locationId;
  final String? teamMemberId;
  final String? referenceId;
  final String? verificationToken;
  final bool? acceptPartialAuthorization;
  final String? buyerEmailAddress;
  final Address? billingAddress;
  final Address? shippingAddress;
  final String? note;
  final String? statementDescriptionIdentifier;

  @override
  List<Object?> get props {
    return [
      sourceId,
      idempotencyKey,
      amountMoney,
      tipMoney,
      appFeeMoney,
      delayDuration,
      autocomplete,
      orderId,
      customerId,
      locationId,
      teamMemberId,
      referenceId,
      verificationToken,
      acceptPartialAuthorization,
      buyerEmailAddress,
      billingAddress,
      shippingAddress,
      note,
      statementDescriptionIdentifier,
    ];
  }
}

@JsonSerializable()
class CreatePaymentResponse extends SquareResponse {
  const CreatePaymentResponse({
    this.payment,
    List<SquareError>? errors,
  }) : super(errors: errors);

  /// Converts a [Map] to an [CreatePaymentResponse]
  factory CreatePaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentResponseFromJson(json);

  /// Converts a [CreatePaymentResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreatePaymentResponseToJson(this);

  final Payment? payment;

  @override
  List<Object?> get props => [payment, errors];
}
