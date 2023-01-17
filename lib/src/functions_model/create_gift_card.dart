import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_gift_card.g.dart';

@JsonSerializable()
class CreateGiftCardRequest extends Equatable {
  const CreateGiftCardRequest({
    required this.idempotencyKey,
    required this.locationId,
    required this.giftCard,
  });

  /// Converts a [Map] to an [CreateGiftCardRequest]
  factory CreateGiftCardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftCardRequestFromJson(json);

  /// Converts a [CreateGiftCardRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateGiftCardRequestToJson(this);

  /// A unique identifier for this request, used to ensure idempotency.
  final String idempotencyKey;

  /// The ID of the location where the gift card should be registered for
  /// reporting purposes. Gift cards can be redeemed at any of the seller's
  /// locations.
  final String locationId;

  /// The gift card to create. The `type` field is required for this request.
  /// The `gan_source` and `gan` fields are included as follows:
  ///
  /// To direct Square to generate a 16-digit GAN, omit gan_source and gan.
  ///
  /// To provide a custom GAN, include gan_source and gan.
  ///
  /// - For `gan_source`, specify `OTHER`.
  /// - For `gan`, provide a custom GAN containing 8 to 20 alphanumeric
  /// characters. The GAN must be unique for the seller and cannot start with
  /// the same bank identification number (BIN) as major credit cards. Do not
  /// use GANs that are easy to guess (such as 12345678) because they greatly
  /// increase the risk of fraud. It is the responsibility of the developer to
  /// ensure the security of their custom GANs.
  ///
  /// To register an unused, physical gift card that the seller previously
  /// ordered from Square, include `gan` and provide the GAN that is printed on
  /// the gift final GiftCard giftCard;
  final GiftCard giftCard;

  @override
  List<Object?> get props => [idempotencyKey, locationId, giftCard];
}

@JsonSerializable()
class CreateGiftCardResponse extends SquareResponse {
  const CreateGiftCardResponse({this.giftCard, super.errors});

  /// Converts a [Map] to an [CreateGiftCardResponse]
  factory CreateGiftCardResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftCardResponseFromJson(json);

  /// Converts a [CreateGiftCardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateGiftCardResponseToJson(this);

  final GiftCard? giftCard;

  @override
  List<Object?> get props => [giftCard, errors];
}
