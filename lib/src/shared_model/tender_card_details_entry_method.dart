import 'package:json_annotation/json_annotation.dart';

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
