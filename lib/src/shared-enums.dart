/// The order (e.g., chronological or alphabetical) in which results from a request are returned.
enum SortOrder {
  /// The results are returned in ascending (e.g., oldest-first or A-Z) order.
  ascending,

  /// The results are returned in descending (e.g., newest-first or Z-A) order.
  descending,
}

/// Indicates which high-level category of error has occurred during a request to the Connect API.
enum ErrorCategory {
  /// An error occurred with the Connect API itself.
  apiError,

  /// An authentication error occurred. Most commonly, the request had a missing, malformed, or otherwise invalid Authorization header.
  authenticationError,

  /// The request was invalid. Most commonly, a required parameter was missing, or a provided parameter had an invalid value.
  invalidRequestError,

  /// Your application reached the Connect API rate limit. Retry your request after a while.
  rateLimitError,

  /// An error occurred while processing a payment method. Most commonly, the details of the payment method were invalid (such as a card's CVV or expiration date).
  paymentMethodError,

  /// An error occurred while attempting to process a refund.
  refundError,
}

/// Indicates the [Card] [Transaction]'s current status.
enum TenderCardDetailsStatus {
  /// The card transaction has been authorized but not yet captured.
  authorized,

  /// The card transaction was authorized and subsequently captured (i.e., completed).
  captured,

  /// The card transaction was authorized and subsequently voided (i.e., canceled).
  voided,

  /// The card transaction failed.
  failed,
}

/// Indicates the [Tender]'s type.
enum TenderType {
  /// A credit card.
  card,

  /// Cash.
  cash,

  /// A credit card processed with a card processor other than Square. This value applies only to merchants in countries where Square does not yet provide card processing.
  thirdPartyCard,

  /// A Square gift card.
  squareGiftCard,

  /// This tender represents the register being opened for a "no sale" event.
  noSale,

  /// A form of tender that doesn't match any other.
  other,
}

/// Indicates the method used to enter the card's details.
enum TenderCardDetailsEntryMethod {
  /// The card was swiped through a Square hardware.
  swiped,

  /// The card information was keyed manually into Square Point of Sale or a Square-hosted form.
  keyed,

  /// The card was processed via EMV with a Square hardware.
  emv,

  /// The buyer's card details were already on file with Square.
  onFile,

  /// The card was processed via a contactless (i.e., NFC) transaction with a Square hardware.
  contactless,
}

/// Indicates a day of a 7 day week.
enum DayOfWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}

/// Indicates the associated currency for an amount of money. Values correspond to ISO 4217.
enum Currency {
  unknownCurrency,
  AED,
  AFN,
  ALL,
  AMD,
  ANG,
  AOA,
  ARS,
  AUD,
  AWG,
  AZN,
  BAM,
  BBD,
  BDT,
  BGN,
  BHD,
  BIF,
  BMD,
  BND,
  BOB,
  BOV,
  BRL,
  BSD,
  BTN,
  BWP,
  BYR,
  BZD,
  CAD,
  CDF,
  CHE,
  CHF,
  CHW,
  CLF,
  CLP,
  CNY,
  COP,
  COU,
  CRC,
  CUC,
  CUP,
  CVE,
  CZK,
  DJF,
  DKK,
  DOP,
  DZD,
  EGP,
  ERN,
  ETB,
  EUR,
  FJD,
  FKP,
  GBP,
  GEL,
  GHS,
  GIP,
  GMD,
  GNF,
  GTQ,
  GYD,
  HKD,
  HNL,
  HRK,
  HTG,
  HUF,
  IDR,
  ILS,
  INR,
  IQD,
  IRR,
  ISK,
  JMD,
  JOD,
  JPY,
  KES,
  KGS,
  KHR,
  KMF,
  KPW,
  KRW,
  KWD,
  KYD,
  KZT,
  LAK,
  LBP,
  LKR,
  LRD,
  LSL,
  LTL,
  LVL,
  LYD,
  MAD,
  MDL,
  MGA,
  MKD,
  MMK,
  MNT,
  MOP,
  MRO,
  MUR,
  MVR,
  MWK,
  MXN,
  MXV,
  MYR,
  MZN,
  NAD,
  NGN,
  NIO,
  NOK,
  NPR,
  NZD,
  OMR,
  PAB,
  PEN,
  PGK,
  PHP,
  PKR,
  PLN,
  PYG,
  QAR,
  RON,
  RSD,
  RUB,
  RWF,
  SAR,
  SBD,
  SCR,
  SDG,
  SEK,
  SGD,
  SHP,
  SLL,
  SOS,
  SRD,
  SSP,
  STD,
  SVC,
  SYP,
  SZL,
  THB,
  TJS,
  TMT,
  TND,
  TOP,
  TRY,
  TTD,
  TWD,
  TZS,
  UAH,
  UGX,
  USD,
  USN,
  USS,
  UYI,
  UYU,
  UZS,
  VEF,
  VND,
  VUV,
  WST,
  XAF,
  XAG,
  XAU,
  XBA,
  XBB,
  XBC,
  XBD,
  XCD,
  XDR,
  XOF,
  XPD,
  XPF,
  XPT,
  XTS,
  XXX,
  YER,
  ZAR,
  ZMK,
  ZMW,
  BTC,
}
