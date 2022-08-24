import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'list_cards.g.dart';

@JsonSerializable()
class ListCardsResponse extends SquareResponse {
  const ListCardsResponse({
    this.cards,
    this.cursor,
    super.errors,
  });

  /// Converts a [Map] to an [ListCardsResponse]
  factory ListCardsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCardsResponseFromJson(json);

  /// Converts a [ListCardsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListCardsResponseToJson(this);

  final List<Card>? cards;
  final String? cursor;

  @override
  List<Object?> get props => [
        errors,
        cards,
        cursor,
      ];
}
