import 'package:json_annotation/json_annotation.dart';

/// Indicates the gift card type.
enum GiftCardType {
  /// A plastic gift card.
  @JsonValue('PHYSICAL')
  physical,

  /// A digital gift card.
  @JsonValue('DIGITAL')
  digital,
}
