import 'package:square_connect/square_connect.dart';

/// The response to the `captureTransaction()` method in [TransactionsApi].
class CaptureTransactionResponse {

  /// The list of errors if any exist.
  final List<SquareError> errors;

  CaptureTransactionResponse(
      {this.errors,
      });

  factory CaptureTransactionResponse.fromJson(Map<String, dynamic> json) {
    return CaptureTransactionResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `charge()` method in [TransactionsApi].
class ChargeResponse {

  /// The list of errors if any exist.
  final List<SquareError> errors;
  /// The newly created transaction.
  final Transaction transaction;

  ChargeResponse({
    this.errors,
    this.transaction,
  });

  factory ChargeResponse.fromJson(Map<String, dynamic> json) {
    return ChargeResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      transaction: json['transaction'] != null
        ? Transaction.fromJson(json['transaction'])
        : null
    );
  }

  get hasErrors {
    return errors != null;
  }
}
