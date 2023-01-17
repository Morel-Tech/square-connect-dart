import 'package:json_annotation/json_annotation.dart';

enum GiftCardGANSource {
  /// The GAN is generated by Square.
  @JsonValue('SQUARE')
  square,

  /// The GAN is provided by a non-Square system.
  @JsonValue('OTHER')
  other,
}