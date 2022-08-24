import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_card.g.dart';

@JsonSerializable()
class RetrieveCardResponse extends SquareResponse {
  const RetrieveCardResponse({
    this.card,
    super.errors,
  });

  /// Converts a [Map] to an [RetrieveCardResponse]
  factory RetrieveCardResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveCardResponseFromJson(json);

  /// Converts a [RetrieveCardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveCardResponseToJson(this);

  final Card? card;

  @override
  List<Object?> get props => [errors, card];
}
