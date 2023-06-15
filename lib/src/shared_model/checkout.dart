import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'checkout.g.dart';

@JsonSerializable()
class Checkout extends Equatable {
  const Checkout({
    required this.id,
    required this.createdAt,
    this.askForShippingAddress,
    this.checkoutPageUrl,
    this.merchantSupportEmail,
    this.order,
    this.prePopulateBuyerEmail,
    this.prePopulateShippingAddress,
    this.redirectUrl,
    this.additionalRecipients,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [Checkout]
  factory Checkout.fromJson(Map<String, dynamic> json) =>
      _$CheckoutFromJson(json);

  /// Converts a [Checkout] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CheckoutToJson(this);

  final String id;
  final bool? askForShippingAddress;
  final String? checkoutPageUrl;
  final DateTime createdAt;
  final String? merchantSupportEmail;
  final Order? order;
  final String? prePopulateBuyerEmail;
  final Address? prePopulateShippingAddress;
  final String? redirectUrl;
  final List<AdditionalRecipient>? additionalRecipients;

  @override
  List<Object?> get props => [
        id,
        askForShippingAddress,
        checkoutPageUrl,
        createdAt,
        merchantSupportEmail,
        order,
        prePopulateBuyerEmail,
        prePopulateShippingAddress,
        redirectUrl,
        additionalRecipients,
      ];
}
