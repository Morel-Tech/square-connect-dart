import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'checkout_options.g.dart';

@JsonSerializable()
class CheckoutOptions extends Equatable {
  const CheckoutOptions({
    this.acceptedPaymentMethods,
    this.allowTippings,
    this.askForShippingAddress,
    this.customFields,
    this.merchantSupportEmail,
    this.redirectUrl,
    this.subscriptionPlanId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CheckoutOptions]
  factory CheckoutOptions.fromJson(Map<String, dynamic> json) =>
      _$CheckoutOptionsFromJson(json);

  /// Converts a [CheckoutOptions] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CheckoutOptionsToJson(this);

  final AcceptedPaymentMethods? acceptedPaymentMethods;
  final bool? allowTippings;
  final bool? askForShippingAddress;
  final List<CustomField>? customFields;
  final String? merchantSupportEmail;
  final String? redirectUrl;
  final String? subscriptionPlanId;

  @override
  List<Object?> get props => [
        acceptedPaymentMethods,
        allowTippings,
        askForShippingAddress,
        customFields,
        merchantSupportEmail,
        redirectUrl,
        subscriptionPlanId
      ];
}
