import 'package:json_annotation/json_annotation.dart';

/// Indicates which high-level category of error has occurred during a request
/// to the Connect API.
enum ErrorCategory {
  /// An error occurred with the Connect API itself.
  @JsonValue('API_ERROR')
  apiError,

  /// An authentication error occurred. Most commonly, the request had a
  /// missing, malformed, or otherwise invalid Authorization header.
  @JsonValue('AUTHENTICATION_ERROR')
  authenticationError,

  /// The request was invalid. Most commonly, a required parameter was missing,
  /// or a provided parameter had an invalid value.
  @JsonValue('INVALID_REQUEST_ERROR')
  invalidRequestError,

  /// Your application reached the Connect API rate limit. Retry your request
  /// after a while.
  @JsonValue('RATE_LIMIT_ERROR')
  rateLimitError,

  /// An error occurred while processing a payment method. Most commonly, the
  /// details of the payment method were invalid (such as a card's CVV or
  /// expiration date).
  @JsonValue('PAYMENT_METHOD_ERROR')
  paymentMethodError,

  /// An error occurred while attempting to process a refund.
  @JsonValue('REFUND_ERROR')
  refundError,
}
