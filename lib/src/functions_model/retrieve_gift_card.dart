import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_gift_card.g.dart';

@JsonSerializable()
class RetrieveGiftCardResponse extends SquareResponse {
  const RetrieveGiftCardResponse({this.giftCard, super.errors});

  /// Converts a [Map] to an [RetrieveGiftCardResponse]
  factory RetrieveGiftCardResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveGiftCardResponseFromJson(json);

  /// Converts a [RetrieveGiftCardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveGiftCardResponseToJson(this);

  /// The gift card retrieved.
  final GiftCard? giftCard;

  @override
  List<Object?> get props => [giftCard, errors];
}
