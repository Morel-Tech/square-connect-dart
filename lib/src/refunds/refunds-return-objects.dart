import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/super-classes.dart';

/// The response to the `listPaymentRefunds()` method in [RefundsApi].
class ListPaymentRefundsResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The list of [PaymentRefund]s returned.
  final List<PaymentRefund> refunds;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListPaymentRefundsResponse({this.errors, this.refunds, this.cursor})
      : assert(xor(errors == null, refunds == null));

  factory ListPaymentRefundsResponse.fromJson(Map<String, dynamic> json) {
    return ListPaymentRefundsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      refunds: json['refunds'] != null
          ? (json['refunds'] as List)
              .map((item) => PaymentRefund.fromJson(item))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }
}

/// The response to the `refundPayment()` method in [RefundsApi].
class RefundPaymentResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly created [PaymentRefund].
  final PaymentRefund refund;

  RefundPaymentResponse({this.errors, this.refund,})
      : assert(xor(errors == null, refund == null));

  factory RefundPaymentResponse.fromJson(Map<String, dynamic> json) {
    return RefundPaymentResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      refund: json['refunds'] != null
          ? PaymentRefund.fromJson(json['refunds'])
          : null,
    );
  }
}

/// The response to the `getPaymentRefund()` method in [RefundsApi].
class GetPaymentRefundResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [PaymentRefund].
  final PaymentRefund refund;

  GetPaymentRefundResponse({this.errors, this.refund,})
      : assert(xor(errors == null, refund == null));

  factory GetPaymentRefundResponse.fromJson(Map<String, dynamic> json) {
    return GetPaymentRefundResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      refund: json['refunds'] != null
          ? PaymentRefund.fromJson(json['refunds'])
          : null,
    );
  }
}