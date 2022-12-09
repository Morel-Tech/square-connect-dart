import 'package:json_annotation/json_annotation.dart';

/// Indicates a card's brand, such as VISA or MASTERCARD.
enum CardBrand {
  /// Card brand of type otherBrand
  @JsonValue('OTHER_BRAND')
  otherBrand,

  /// Card brand of type visa
  @JsonValue('VISA')
  visa,

  /// Card brand of type mastercard
  @JsonValue('MASTERCARD')
  mastercard,

  /// Card brand of type americanExpress
  @JsonValue('AMERICAN_EXPRESS')
  americanExpress,

  /// Card brand of type discover
  @JsonValue('DISCOVER')
  discover,

  /// Card brand of type discoverDiners
  @JsonValue('DISCOVER_DINERS')
  discoverDiners,

  /// Card brand of type jcb
  @JsonValue('JCB')
  jcb,

  /// Card brand of type chinaUnionpay
  @JsonValue('CHINA_UNIONPAY')
  chinaUnionpay,

  /// Card brand of type squareGiftCard
  @JsonValue('SQUARE_GIFT_CARD')
  squareGiftCard,

  /// Card brand of type squareCapitalCard
  @JsonValue('SQUARE_CAPITAL_CARD')
  squareCapitalCard,

  /// Card brand of type interac
  @JsonValue('INTERAC')
  interac,

  /// Card brand of type eftpos
  @JsonValue('EFTPOS')
  eftpos,

  /// Card brand of type felica
  @JsonValue('FELICA')
  felica,

  /// Card brand of type ebt
  @JsonValue('EBT')
  ebt,
}
