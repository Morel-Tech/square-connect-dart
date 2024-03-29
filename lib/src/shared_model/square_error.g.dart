// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'square_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SquareErrors _$SquareErrorsFromJson(Map<String, dynamic> json) => SquareErrors(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SquareErrorsToJson(SquareErrors instance) =>
    <String, dynamic>{
      'errors': instance.errors.map((e) => e.toJson()).toList(),
    };

SquareError _$SquareErrorFromJson(Map<String, dynamic> json) => SquareError(
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      code: $enumDecode(_$ErrorCodeEnumMap, json['code']),
      detail: json['detail'] as String?,
      field: json['field'] as String?,
    );

Map<String, dynamic> _$SquareErrorToJson(SquareError instance) {
  final val = <String, dynamic>{
    'category': _$CategoryEnumMap[instance.category]!,
    'code': _$ErrorCodeEnumMap[instance.code]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('detail', instance.detail);
  writeNotNull('field', instance.field);
  return val;
}

const _$CategoryEnumMap = {
  Category.apiError: 'API_ERROR',
  Category.authenticationError: 'AUTHENTICATION_ERROR',
  Category.invalidRequestError: 'INVALID_REQUEST_ERROR',
  Category.rateLimitError: 'RATE_LIMIT_ERROR',
  Category.paymentMethodError: 'PAYMENT_METHOD_ERROR',
  Category.refundError: 'REFUND_ERROR',
};

const _$ErrorCodeEnumMap = {
  ErrorCode.internalServerError: 'INTERNAL_SERVER_ERROR',
  ErrorCode.unauthorized: 'UNAUTHORIZED',
  ErrorCode.accessTokenExpired: 'ACCESS_TOKEN_EXPIRED',
  ErrorCode.accessTokenRevoked: 'ACCESS_TOKEN_REVOKED',
  ErrorCode.clientDisabled: 'CLIENT_DISABLED',
  ErrorCode.forbidden: 'FORBIDDEN',
  ErrorCode.insufficientScopes: 'INSUFFICIENT_SCOPES',
  ErrorCode.applicationDisabled: 'APPLICATION_DISABLED',
  ErrorCode.v1Application: 'V1_APPLICATION',
  ErrorCode.v1AccessToken: 'V1_ACCESS_TOKEN',
  ErrorCode.cardProcessingNotEnabled: 'CARD_PROCESSING_NOT_ENABLED',
  ErrorCode.badRequest: 'BAD_REQUEST',
  ErrorCode.missingRequiredParameter: 'MISSING_REQUIRED_PARAMETER',
  ErrorCode.incorrectType: 'INCORRECT_TYPE',
  ErrorCode.invalidTime: 'INVALID_TIME',
  ErrorCode.invalidTimeRange: 'INVALID_TIME_RANGE',
  ErrorCode.invalidValue: 'INVALID_VALUE',
  ErrorCode.invalidCursor: 'INVALID_CURSOR',
  ErrorCode.unknownQueryParameter: 'UNKNOWN_QUERY_PARAMETER',
  ErrorCode.conflictingParameters: 'CONFLICTING_PARAMETERS',
  ErrorCode.expectedJsonBody: 'EXPECTED_JSON_BODY',
  ErrorCode.invalidSortOrder: 'INVALID_SORT_ORDER',
  ErrorCode.valueRegexMismatch: 'VALUE_REGEX_MISMATCH',
  ErrorCode.valueTooShort: 'VALUE_TOO_SHORT',
  ErrorCode.valueTooLong: 'VALUE_TOO_LONG',
  ErrorCode.valueTooLow: 'VALUE_TOO_LOW',
  ErrorCode.valueTooHigh: 'VALUE_TOO_HIGH',
  ErrorCode.valueEmpty: 'VALUE_EMPTY',
  ErrorCode.arrayLengthTooLong: 'ARRAY_LENGTH_TOO_LONG',
  ErrorCode.arrayLengthTooShort: 'ARRAY_LENGTH_TOO_SHORT',
  ErrorCode.arrayEmpty: 'ARRAY_EMPTY',
  ErrorCode.expectedBoolean: 'EXPECTED_BOOLEAN',
  ErrorCode.expectedInteger: 'EXPECTED_INTEGER',
  ErrorCode.expectedFloat: 'EXPECTED_FLOAT',
  ErrorCode.expectedString: 'EXPECTED_STRING',
  ErrorCode.expectedObject: 'EXPECTED_OBJECT',
  ErrorCode.expectedArray: 'EXPECTED_ARRAY',
  ErrorCode.expectedMap: 'EXPECTED_MAP',
  ErrorCode.expectedBase64EncodedByteArray:
      'EXPECTED_BASE64_ENCODED_BYTE_ARRAY',
  ErrorCode.invalidArrayValue: 'INVALID_ARRAY_VALUE',
  ErrorCode.invalidEnumValue: 'INVALID_ENUM_VALUE',
  ErrorCode.invalidContentType: 'INVALID_CONTENT_TYPE',
  ErrorCode.invalidFormValue: 'INVALID_FORM_VALUE',
  ErrorCode.customerNotFound: 'CUSTOMER_NOT_FOUND',
  ErrorCode.oneInstrumentExpected: 'ONE_INSTRUMENT_EXPECTED',
  ErrorCode.noFieldsSet: 'NO_FIELDS_SET',
  ErrorCode.deprecatedFieldSet: 'DEPRECATED_FIELD_SET',
  ErrorCode.retiredFieldSet: 'RETIRED_FIELD_SET',
  ErrorCode.tooManyMapEntries: 'TOO_MANY_MAP_ENTRIES',
  ErrorCode.mapKeyLengthTooShort: 'MAP_KEY_LENGTH_TOO_SHORT',
  ErrorCode.mapKeyLengthTooLong: 'MAP_KEY_LENGTH_TOO_LONG',
  ErrorCode.cardExpired: 'CARD_EXPIRED',
  ErrorCode.invalidExpiration: 'INVALID_EXPIRATION',
  ErrorCode.invalidExpirationYear: 'INVALID_EXPIRATION_YEAR',
  ErrorCode.invalidExpirationDate: 'INVALID_EXPIRATION_DATE',
  ErrorCode.unsupportedCardBrand: 'UNSUPPORTED_CARD_BRAND',
  ErrorCode.unsupportedEntryMethod: 'UNSUPPORTED_ENTRY_METHOD',
  ErrorCode.invalidEncryptedCard: 'INVALID_ENCRYPTED_CARD',
  ErrorCode.invalidCard: 'INVALID_CARD',
  ErrorCode.genericDecline: 'GENERIC_DECLINE',
  ErrorCode.cvvFailure: 'CVV_FAILURE',
  ErrorCode.addressVerificationFailure: 'ADDRESS_VERIFICATION_FAILURE',
  ErrorCode.invalidAccount: 'INVALID_ACCOUNT',
  ErrorCode.currencyMismatch: 'CURRENCY_MISMATCH',
  ErrorCode.insufficientFunds: 'INSUFFICIENT_FUNDS',
  ErrorCode.insufficientPermissions: 'INSUFFICIENT_PERMISSIONS',
  ErrorCode.cardholderInsufficientPermissions:
      'CARDHOLDER_INSUFFICIENT_PERMISSIONS',
  ErrorCode.invalidLocation: 'INVALID_LOCATION',
  ErrorCode.transactionLimit: 'TRANSACTION_LIMIT',
  ErrorCode.voiceFailure: 'VOICE_FAILURE',
  ErrorCode.panFailure: 'PAN_FAILURE',
  ErrorCode.expirationFailure: 'EXPIRATION_FAILURE',
  ErrorCode.cardNotSupported: 'CARD_NOT_SUPPORTED',
  ErrorCode.invalidPin: 'INVALID_PIN',
  ErrorCode.invalidPostalCode: 'INVALID_POSTAL_CODE',
  ErrorCode.invalidFees: 'INVALID_FEES',
  ErrorCode.manuallyEnteredPaymentNotSupported:
      'MANUALLY_ENTERED_PAYMENT_NOT_SUPPORTED',
  ErrorCode.paymentLimitExceeded: 'PAYMENT_LIMIT_EXCEEDED',
  ErrorCode.giftCardAvailableAmount: 'GIFT_CARD_AVAILABLE_AMOUNT',
  ErrorCode.accountUnusable: 'ACCOUNT_UNUSABLE',
  ErrorCode.buyerRefusedPayment: 'BUYER_REFUSED_PAYMENT',
  ErrorCode.delayedTransactionExpired: 'DELAYED_TRANSACTION_EXPIRED',
  ErrorCode.delayedTransactionCanceled: 'DELAYED_TRANSACTION_CANCELED',
  ErrorCode.delayedTransactionCaptured: 'DELAYED_TRANSACTION_CAPTURED',
  ErrorCode.delayedTransactionFailed: 'DELAYED_TRANSACTION_FAILED',
  ErrorCode.cardTokenExpired: 'CARD_TOKEN_EXPIRED',
  ErrorCode.cardTokenUsed: 'CARD_TOKEN_USED',
  ErrorCode.amountTooHigh: 'AMOUNT_TOO_HIGH',
  ErrorCode.unsupportedInstrumentType: 'UNSUPPORTED_INSTRUMENT_TYPE',
  ErrorCode.refundAmountInvalid: 'REFUND_AMOUNT_INVALID',
  ErrorCode.refundAlreadyPending: 'REFUND_ALREADY_PENDING',
  ErrorCode.paymentNotRefundable: 'PAYMENT_NOT_REFUNDABLE',
  ErrorCode.refundDeclined: 'REFUND_DECLINED',
  ErrorCode.invalidCardData: 'INVALID_CARD_DATA',
  ErrorCode.sourceUsed: 'SOURCE_USED',
  ErrorCode.sourceExpired: 'SOURCE_EXPIRED',
  ErrorCode.unsupportedLoyaltyRewardTier: 'UNSUPPORTED_LOYALTY_REWARD_TIER',
  ErrorCode.locationMismatch: 'LOCATION_MISMATCH',
  ErrorCode.idempotencyKeyReused: 'IDEMPOTENCY_KEY_REUSED',
  ErrorCode.unexpectedValue: 'UNEXPECTED_VALUE',
  ErrorCode.sandboxNotSupported: 'SANDBOX_NOT_SUPPORTED',
  ErrorCode.invalidEmailAddress: 'INVALID_EMAIL_ADDRESS',
  ErrorCode.invalidPhoneNumber: 'INVALID_PHONE_NUMBER',
  ErrorCode.checkoutExpired: 'CHECKOUT_EXPIRED',
  ErrorCode.badCertificate: 'BAD_CERTIFICATE',
  ErrorCode.invalidSquareVersionFormat: 'INVALID_SQUARE_VERSION_FORMAT',
  ErrorCode.apiVersionIncompatible: 'API_VERSION_INCOMPATIBLE',
  ErrorCode.cardDeclined: 'CARD_DECLINED',
  ErrorCode.verifyCvvFailure: 'VERIFY_CVV_FAILURE',
  ErrorCode.verifyAvsFailure: 'VERIFY_AVS_FAILURE',
  ErrorCode.cardDeclinedCallIssuer: 'CARD_DECLINED_CALL_ISSUER',
  ErrorCode.cardDeclinedVerificationRequired:
      'CARD_DECLINED_VERIFICATION_REQUIRED',
  ErrorCode.allowablePinTriesExceeded: 'ALLOWABLE_PIN_TRIES_EXCEEDED',
  ErrorCode.reservationDeclined: 'RESERVATION_DECLINED',
  ErrorCode.notFound: 'NOT_FOUND',
  ErrorCode.applePaymentProcessingCertificateHashNotFound:
      'APPLE_PAYMENT_PROCESSING_CERTIFICATE_HASH_NOT_FOUND',
  ErrorCode.methodNotAllowed: 'METHOD_NOT_ALLOWED',
  ErrorCode.notAcceptable: 'NOT_ACCEPTABLE',
  ErrorCode.conflict: 'CONFLICT',
  ErrorCode.gone: 'GONE',
  ErrorCode.requestEntityTooLarge: 'REQUEST_ENTITY_TOO_LARGE',
  ErrorCode.unsupportedMediaType: 'UNSUPPORTED_MEDIA_TYPE',
  ErrorCode.unprocessableEntity: 'UNPROCESSABLE_ENTITY',
  ErrorCode.rateLimited: 'RATE_LIMITED',
  ErrorCode.notImplemented: 'NOT_IMPLEMENTED',
  ErrorCode.badGateway: 'BAD_GATEWAY',
  ErrorCode.serviceUnavailable: 'SERVICE_UNAVAILABLE',
  ErrorCode.temporaryError: 'TEMPORARY_ERROR',
  ErrorCode.gatewayTimeout: 'GATEWAY_TIMEOUT',
};
