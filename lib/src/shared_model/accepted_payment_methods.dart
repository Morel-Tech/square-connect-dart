import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'accepted_payment_methods.g.dart';

@JsonSerializable()
class AcceptedPaymentMethods extends Equatable {
  const AcceptedPaymentMethods({
    this.afterpayClearpay,
    this.applePay,
    this.cashAppPay,
    this.googlePay,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [AcceptedPaymentMethods]
  factory AcceptedPaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$AcceptedPaymentMethodsFromJson(json);

  /// Converts a [AcceptedPaymentMethods] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$AcceptedPaymentMethodsToJson(this);

  final bool? afterpayClearpay;
  final bool? applePay;
  final bool? cashAppPay;
  final bool? googlePay;

  @override
  List<Object?> get props => [
        afterpayClearpay,
        applePay,
        cashAppPay,
        googlePay,
      ];
}
