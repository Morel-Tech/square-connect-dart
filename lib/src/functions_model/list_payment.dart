import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_payment.g.dart';

@JsonSerializable()
class ListPaymentResponse extends SquareResponse {
  const ListPaymentResponse({required this.paymentLinks, super.errors});

  /// Converts a [Map] to an [ListPaymentResponse]
  factory ListPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$ListPaymentResponseFromJson(json);

  /// Converts a [ListPaymentResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListPaymentResponseToJson(this);

  final List<PaymentLink> paymentLinks;

  @override
  List<Object?> get props => [errors, paymentLinks];
}
