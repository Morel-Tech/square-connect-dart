import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_gift_card_from_gan.g.dart';

@JsonSerializable()
class RetrieveGiftCardFromGanRequest extends Equatable {
  const RetrieveGiftCardFromGanRequest({
    required this.gan,
  });

  /// Converts a [Map] to an [RetrieveGiftCardFromGanRequest]
  factory RetrieveGiftCardFromGanRequest.fromJson(Map<String, dynamic> json) =>
      _$RetrieveGiftCardFromGanRequestFromJson(json);

  /// Converts a [RetrieveGiftCardFromGanRequest] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveGiftCardFromGanRequestToJson(this);

  /// The gift card account number (GAN) of the gift card to retrieve. The
  /// maximum length of a GAN is 255 digits to account for third-party GANs
  /// that have been imported. Square-issued gift cards have 16-digit GANs.
  final String gan;

  @override
  List<Object?> get props => [gan];
}

@JsonSerializable()
class RetrieveGiftCardFromGanResponse extends SquareResponse {
  const RetrieveGiftCardFromGanResponse({this.giftCard, super.errors});

  /// Converts a [Map] to an [RetrieveGiftCardFromGanResponse]
  factory RetrieveGiftCardFromGanResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveGiftCardFromGanResponseFromJson(json);

  /// Converts a [RetrieveGiftCardFromGanResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$RetrieveGiftCardFromGanResponseToJson(this);

  /// A gift card that was fetched, if present. It returns empty if an
  /// error occurred.

  final GiftCard? giftCard;

  @override
  List<Object?> get props => [giftCard, errors];
}
