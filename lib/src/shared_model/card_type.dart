import 'package:json_annotation/json_annotation.dart';

/// Indicates a card's type, such as CREDIT or DEBIT.
enum CardType {
  /// Card type of unknownCardType
  @JsonValue('UNKNOWN_CARD_TYPE')
  unknownCardType,

  /// Card type of credit
  @JsonValue('CREDIT')
  credit,

  /// Card type of debit
  @JsonValue('DEBIT')
  debit,
}
