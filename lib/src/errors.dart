class SquareError {
  final ErrorCategory category;
  final String code;
  final String detail;
  final String field;

  SquareError({this.category, this.code, this.detail, this.field});

  factory SquareError.fromJson(Map<String, dynamic> json) {
    return SquareError(
      category: getErrorCategoryfromString(json['category']),
      code: json['code'],
      detail: json['detail'],
      field: json['field'],
    );
  }
}

enum ErrorCategory {
  apiError,
  authenticationError,
  invalidRequestError,
  rateLimitError,
  paymentMethodError,
  refundError,
}

var errorCategoryStringMapping = {
  'API_ERROR': ErrorCategory.apiError,
  'AUTHENTICATION_ERROR': ErrorCategory.authenticationError,
  'INVALID_REQUEST_ERROR': ErrorCategory.invalidRequestError,
  'RATE_LIMIT_ERROR': ErrorCategory.rateLimitError,
  'PAYMENT_METHOD_ERROR': ErrorCategory.paymentMethodError,
  'REFUND_ERROR': ErrorCategory.refundError,
};

ErrorCategory getErrorCategoryfromString(String input) {
  var ans = errorCategoryStringMapping[input];
  if(ans == null) throw ArgumentError.value(input, 'input', 'Input must be a valid ErrorCategory in SCREAMING_CAPS');
  return ans;
}