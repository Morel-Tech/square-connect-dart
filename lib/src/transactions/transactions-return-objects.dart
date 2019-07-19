import 'package:square_connect/square_connect.dart';

/// The response to the `captureTransaction()` method in [TransactionsApi].
class CaptureTransactionResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  CaptureTransactionResponse({
    this.errors,
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
            : null);
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `createRefund()` method in [TransactionsApi].
class CreateRefundResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly created [Refund].
  final Refund refund;

  CreateRefundResponse({
    this.errors,
    this.refund,
  });

  factory CreateRefundResponse.fromJson(Map<String, dynamic> json) {
    return CreateRefundResponse(
        errors: json['errors'] != null
            ? (json['errors'] as List)
                .map((error) => SquareError.fromJson(error))
                .toList()
            : null,
        refund: json['refund'] != null
            ? Refund.fromJson(json['refund'])
            : null);
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `listRefunds()` method in [TransactionsApi].
class ListRefundsResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The returned [Refund]s.
  final List<Refund> refunds;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListRefundsResponse({
    this.errors,
    this.refunds,
    this.cursor,
  });

  factory ListRefundsResponse.fromJson(Map<String, dynamic> json) {
    return ListRefundsResponse(
        errors: json['errors'] != null
            ? (json['errors'] as List)
                .map((error) => SquareError.fromJson(error))
                .toList()
            : null,
        refunds: json['refund'] != null
            ? (json['refund'] as List).map((item) => Refund.fromJson(item)).toList()
            : null,
        cursor: json['cursor']
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `listTransactions()` method in [TransactionsApi].
class ListTransactionsResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The returned [Transaction=]s.
  final List<Transaction> transactions;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  ListTransactionsResponse({
    this.errors,
    this.transactions,
    this.cursor,
  });

  factory ListTransactionsResponse.fromJson(Map<String, dynamic> json) {
    return ListTransactionsResponse(
        errors: json['errors'] != null
            ? (json['errors'] as List)
                .map((error) => SquareError.fromJson(error))
                .toList()
            : null,
        transactions: json['transactions'] != null
            ? (json['transactions'] as List).map((item) => Transaction.fromJson(item)).toList()
            : null,
        cursor: json['cursor']
    );
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `retrieveTransaction()` method in [TransactionsApi].
class RetrieveTransactionResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved transaction.
  final Transaction transaction;

  RetrieveTransactionResponse({
    this.errors,
    this.transaction,
  });

  factory RetrieveTransactionResponse.fromJson(Map<String, dynamic> json) {
    return RetrieveTransactionResponse(
        errors: json['errors'] != null
            ? (json['errors'] as List)
                .map((error) => SquareError.fromJson(error))
                .toList()
            : null,
        transaction: json['transaction'] != null
            ? Transaction.fromJson(json['transaction'])
            : null);
  }

  get hasErrors {
    return errors != null;
  }
}

/// The response to the `voidTransaction()` method in [TransactionsApi].
class VoidTransactionResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  VoidTransactionResponse({
    this.errors,
  });

  factory VoidTransactionResponse.fromJson(Map<String, dynamic> json) {
    return VoidTransactionResponse(
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