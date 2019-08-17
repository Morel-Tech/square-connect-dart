import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';
import 'package:square_connect/src/super-classes.dart';

/// The response to the `listPayments()` method in [PaymentsApi].
class ListPaymentsResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The list of [Payment]s returned.
  final List<Payment> payments;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListPaymentsResponse({this.errors, this.payments, this.cursor})
      : assert(xor(errors == null, payments == null));

  factory ListPaymentsResponse.fromJson(Map<String, dynamic> json) {
    return ListPaymentsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      payments: json['payments'] != null
          ? (json['payments'] as List)
              .map((item) => Payment.fromJson(item))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }
}

/// The response to the `createPayment()` method in [PaymentsApi].
class CreatePaymentResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly created [Payment].
  final Payment payment;

  CreatePaymentResponse({this.errors, this.payment})
      : assert(xor(errors == null, payment == null));

  factory CreatePaymentResponse.fromJson(Map<String, dynamic> json) {
    return CreatePaymentResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      payment: json['payments'] != null
          ? Payment.fromJson(json['payments'])
          : null,
    );
  }
}

/// The response to the `cancelPaymentByIdempotencyKey()` method in [PaymentsApi].
class CancelPaymentByIdempotencyKeyResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  CancelPaymentByIdempotencyKeyResponse({this.errors});

  factory CancelPaymentByIdempotencyKeyResponse.fromJson(Map<String, dynamic> json) {
    return CancelPaymentByIdempotencyKeyResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
    );
  }
}

/// The response to the `getPayment()` method in [PaymentsApi].
class GetPaymentResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [Payment].
  final Payment payment;

  GetPaymentResponse({this.errors, this.payment})
      : assert(xor(errors == null, payment == null));

  factory GetPaymentResponse.fromJson(Map<String, dynamic> json) {
    return GetPaymentResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      payment: json['payments'] != null
          ? Payment.fromJson(json['payments'])
          : null,
    );
  }
}

/// The response to the `cancelPayment()` method in [PaymentsApi].
class CancelPaymentResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The canceled [Payment].
  final Payment payment;

  CancelPaymentResponse({this.errors, this.payment})
      : assert(xor(errors == null, payment == null));

  factory CancelPaymentResponse.fromJson(Map<String, dynamic> json) {
    return CancelPaymentResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      payment: json['payments'] != null
          ? Payment.fromJson(json['payments'])
          : null,
    );
  }
}

/// The response to the `completePayment()` method in [PaymentsApi].
class CompletePaymentResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The completed [Payment].
  final Payment payment;

  CompletePaymentResponse({this.errors, this.payment})
      : assert(xor(errors == null, payment == null));

  factory CompletePaymentResponse.fromJson(Map<String, dynamic> json) {
    return CompletePaymentResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      payment: json['payments'] != null
          ? Payment.fromJson(json['payments'])
          : null,
    );
  }
}