import 'package:json_annotation/json_annotation.dart';

/// The order (e.g., chronological or alphabetical) in which results from a
/// request are returned.
enum SortOrder {
  /// The results are returned in ascending (e.g., oldest-first or A-Z) order.
  @JsonValue('ASCENDING')
  ascending,

  /// The results are returned in descending (e.g., newest-first or Z-A) order.
  @JsonValue('DESCENDING')
  descending,
}

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

/// Indicates the Card Transaction's current status.
enum TenderCardDetailsStatus {
  /// The card transaction has been authorized but not yet captured.
  @JsonValue('AUTHORIZED')
  authorized,

  /// The card transaction was authorized and subsequently
  /// captured (i.e., completed).
  @JsonValue('CAPTURED')
  captured,

  /// The card transaction was authorized and subsequently
  /// voided (i.e., canceled).
  @JsonValue('VOIDED')
  voided,

  /// The card transaction failed.
  @JsonValue('FAILED')
  failed,
}

/// Indicates the Tender's type.
enum TenderType {
  /// A credit card.
  @JsonValue('CARD')
  card,

  /// Cash.
  @JsonValue('CASH')
  cash,

  /// A credit card processed with a card processor other than Square. This
  /// value applies only to merchants in countries where Square does not
  /// yet provide card processing.
  @JsonValue('THIRD_PARTY_CARD')
  thirdPartyCard,

  /// A Square gift card.
  @JsonValue('SQUARE_GIFT_CARD')
  squareGiftCard,

  /// This tender represents the register being opened for a "no sale" event.
  @JsonValue('NO_SALE')
  noSale,

  /// A form of tender that doesn't match any other.
  @JsonValue('OTHER')
  other,
}

/// Indicates the method used to enter the card's details.
enum TenderCardDetailsEntryMethod {
  /// The card was swiped through a Square hardware.
  @JsonValue('SWIPED')
  swiped,

  /// The card information was keyed manually into Square Point of Sale or
  /// a Square-hosted form.
  @JsonValue('KEYED')
  keyed,

  /// The card was processed via EMV with a Square hardware.
  @JsonValue('EMV')
  emv,

  /// The buyer's card details were already on file with Square.
  @JsonValue('ON_FILE')
  onFile,

  /// The card was processed via a contactless (i.e., NFC) transaction
  /// with a Square hardware.
  @JsonValue('CONTACTLESS')
  contactless,
}

/// Indicates a day of a 7 day week.
enum DayOfWeek {
  @JsonValue('SUN')
  sunday,
  @JsonValue('MON')
  monday,
  @JsonValue('TUE')
  tuesday,
  @JsonValue('WED')
  wednesday,
  @JsonValue('THU')
  thursday,
  @JsonValue('FRI')
  friday,
  @JsonValue('SAT')
  saturday,
}
