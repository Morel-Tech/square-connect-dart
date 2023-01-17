import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_gift_cards.g.dart';

@JsonSerializable()
class ListGiftCardsResponse extends SquareResponse {
  const ListGiftCardsResponse({
    this.giftCards,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [ListGiftCardsResponse]
  factory ListGiftCardsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListGiftCardsResponseFromJson(json);

  /// Converts a [ListGiftCardsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListGiftCardsResponseToJson(this);

  /// The requested gift cards or an empty object if none are found.
  final List<GiftCard>? giftCards;

  /// When a response is truncated, it includes a cursor that you can use in a
  /// subsequent request to retrieve the next set of gift cards. If a cursor
  /// is not present, this is the final response.
  final String? cursor;

  @override
  List<Object?> get props => [giftCards, cursor, errors];
}
