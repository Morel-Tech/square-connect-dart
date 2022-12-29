import 'package:json_annotation/json_annotation.dart';

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
