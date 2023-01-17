import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'gift_card.g.dart';

@JsonSerializable()
class GiftCard extends Equatable {
  const GiftCard({
    this.id,
    required this.type,
    this.ganSource,
    this.state,
    this.balanceMoney,
    this.gan,
    this.createdAt,
    this.customerIds,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [GiftCard]
  factory GiftCard.fromJson(Map<String, dynamic> json) =>
      _$GiftCardFromJson(json);

  /// Converts a [GiftCard] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GiftCardToJson(this);

  /// **Read only** The Square-assigned ID of the gift card.
  final String? id;

  /// The gift card type.
  final GiftCardType type;

  /// The source that generated the gift card account number (GAN). The
  /// default value is `SQUARE`.
  final GiftCardGANSource? ganSource;

  /// **Read only** The current gift card state.
  final GiftCardStatus? state;

  /// **Read only** The current gift card balance. This balance is always
  /// greater than or equal to zero.
  final Money? balanceMoney;

  /// The gift card account number (GAN). Buyers can use the GAN to make
  /// purchases or check the gift card balance.
  final String? gan;

  /// **Read only** The timestamp when the gift card was created, in RFC 3339
  /// format. In the case of a digital gift card, it is the time when you
  /// create a card (using the Square Point of Sale application, Seller
  /// Dashboard, or Gift Cards API).
  ///
  /// In the case of a plastic gift card, it is the time when Square
  /// associates the card with the seller at the time of activation.
  final DateTime? createdAt;

  /// Read only The IDs of the customer profiles to whom this gift card
  /// is linked.
  final List<String>? customerIds;

  @override
  List<Object?> get props => [
        id,
        type,
        ganSource,
        state,
        balanceMoney,
        gan,
        createdAt,
        customerIds,
      ];
}
