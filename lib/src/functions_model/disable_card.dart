import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'disable_card.g.dart';

@JsonSerializable()
class DisableCardResponse extends SquareResponse {
  const DisableCardResponse({this.card, super.errors});

  /// Converts a [Map] to an [DisableCardResponse]
  factory DisableCardResponse.fromJson(Map<String, dynamic> json) =>
      _$DisableCardResponseFromJson(json);

  /// Converts a [DisableCardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$DisableCardResponseToJson(this);

  final Card? card;

  @override
  List<Object?> get props => [errors, card];
}
