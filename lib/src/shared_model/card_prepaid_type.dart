import 'package:json_annotation/json_annotation.dart';

/// Indicates a card's prepaid type, such as NOT_PREPAID or PREPAID.
enum CardPrepaidType {
  /// Prepaid type of unknown_prepaid_type
  @JsonValue('UNKNOWN_PREPAID_TYPE')
  unknownPrepaidType,

  /// Prepaid type of not_prepaid
  @JsonValue('NOT_PREPAID')
  notPrepaid,

  /// Prepaid type of prepaid
  @JsonValue('PREPAID')
  prepaid,
}
