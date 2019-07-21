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

String getStringFromCurrency(Currency input) {
  if (input == Currency.unknownCurrency) return 'UNKNOWN_CURRENCY';
  return input.toString().substring(8);
}

const _mapStringtoErrorCategory = {
  'API_ERROR': ErrorCategory.apiError,
  'AUTHENTICATION_ERROR': ErrorCategory.authenticationError,
  'INVALID_REQUEST_ERROR': ErrorCategory.invalidRequestError,
  'RATE_LIMIT_ERROR': ErrorCategory.rateLimitError,
  'PAYMENT_METHOD_ERROR': ErrorCategory.paymentMethodError,
  'REFUND_ERROR': ErrorCategory.refundError,
};

ErrorCategory getErrorCategoryFromString(String input) =>
    _mapStringtoErrorCategory[input];
String getStringFromErrorCategory(ErrorCategory input) =>
    _mapStringtoErrorCategory.keys
        .singleWhere((value) => _mapStringtoErrorCategory[value] == input);

const _mapStringtoTenderCardDetailsStatus = {
  'AUTHORIZED': TenderCardDetailsStatus.authorized,
  'CAPTURED': TenderCardDetailsStatus.captured,
  'VOIDED': TenderCardDetailsStatus.voided,
  'FAILED': TenderCardDetailsStatus.failed,
};

TenderCardDetailsStatus getTenderCardDetailsStatusFromString(String input) =>
    _mapStringtoTenderCardDetailsStatus[input];
String getStringFromTenderCardDetailsStatus(TenderCardDetailsStatus input) =>
    _mapStringtoTenderCardDetailsStatus.keys.singleWhere(
        (value) => _mapStringtoTenderCardDetailsStatus[value] == input);

const _mapStringtoTenderType = {
  'CARD': TenderType.card,
  'CASH': TenderType.cash,
  'THIRD_PARTY_CARD': TenderType.thirdPartyCard,
  'SQUARE_GIFT_CARD': TenderType.squareGiftCard,
  'NO_SALE': TenderType.noSale,
  'OTHER': TenderType.other,
};

TenderType getTenderTypeFromString(String input) =>
    _mapStringtoTenderType[input];
String getStringFromTenderType(TenderType input) => _mapStringtoTenderType.keys
    .singleWhere((value) => _mapStringtoTenderType[value] == input);

const _mapStringtoTenderCardDetailsEntryMethod = {
  'SWIPED': TenderCardDetailsEntryMethod.swiped,
  'KEYED': TenderCardDetailsEntryMethod.keyed,
  'EMV': TenderCardDetailsEntryMethod.emv,
  'ON_FILE': TenderCardDetailsEntryMethod.onFile,
  'CONTACTLESS': TenderCardDetailsEntryMethod.contactless,
};

TenderCardDetailsEntryMethod getTenderCardDetailsEntryMethodFromString(
        String input) =>
    _mapStringtoTenderCardDetailsEntryMethod[input];
String getStringFromTenderCardDetailsEntryMethod(
        TenderCardDetailsEntryMethod input) =>
    _mapStringtoTenderCardDetailsEntryMethod.keys.singleWhere(
        (value) => _mapStringtoTenderCardDetailsEntryMethod[value] == input);

const _mapStringtoRefundStatus = {
  'PENDING': RefundStatus.pending,
  'APPROVED': RefundStatus.approved,
  'REJECTED': RefundStatus.rejected,
  'FAILED': RefundStatus.failed,
};

RefundStatus getRefundStatusFromString(String input) =>
    _mapStringtoRefundStatus[input];
String getStringFromRefundStatus(RefundStatus input) =>
    _mapStringtoRefundStatus.keys
        .singleWhere((value) => _mapStringtoRefundStatus[value] == input);

const _mapStringtoDayOfWeek = {
  'SUN': DayOfWeek.sunday,
  'MON': DayOfWeek.monday,
  'TUE': DayOfWeek.tuesday,
  'WED': DayOfWeek.wednesday,
  'THU': DayOfWeek.thursday,
  'FRI': DayOfWeek.friday,
  'SAT': DayOfWeek.saturday,
};

DayOfWeek getDayOfWeekFromString(String input) => _mapStringtoDayOfWeek[input];
String getStringFromDayOfWeek(DayOfWeek input) => _mapStringtoDayOfWeek.keys
    .singleWhere((value) => _mapStringtoDayOfWeek[value] == input);