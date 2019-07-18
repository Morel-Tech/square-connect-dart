import 'package:square_connect/square_connect.dart';

const _mapStringtoSortOrder = {
  'ASC': SortOrder.ascending,
  'DESC': SortOrder.descending,
};

SortOrder getSortOrderFromString(String input) => _mapStringtoSortOrder[input];
String getStringFromSortOrder(SortOrder input) => _mapStringtoSortOrder.keys
    .singleWhere((value) => _mapStringtoSortOrder[value] == input);

Currency getCurrencyFromString(String input) {
  if (input == 'UNKNOWN_CURRENCY') return Currency.unknownCurrency;
  return Currency.values.firstWhere((f) => f.toString() == 'Currency.$input');
}

var _mapStringtoErrorCategory = {
  'API_ERROR': ErrorCategory.apiError,
  'AUTHENTICATION_ERROR': ErrorCategory.authenticationError,
  'INVALID_REQUEST_ERROR': ErrorCategory.invalidRequestError,
  'RATE_LIMIT_ERROR': ErrorCategory.rateLimitError,
  'PAYMENT_METHOD_ERROR': ErrorCategory.paymentMethodError,
  'REFUND_ERROR': ErrorCategory.refundError,
};

ErrorCategory getErrorCategoryFromString(String input) => _mapStringtoErrorCategory[input];
String getStringFromErrorCategory(ErrorCategory input) => _mapStringtoErrorCategory.keys
    .singleWhere((value) => _mapStringtoErrorCategory[value] == input);