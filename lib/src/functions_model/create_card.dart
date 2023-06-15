import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_card.g.dart';

@JsonSerializable()
class CreateCardRequest extends Equatable {
  const CreateCardRequest({
    required this.idempotencyKey,
    required this.sourceId,
    required this.card,
    this.verificationToken,
  });

  /// Converts a [Map] to an [CreateCardRequest]
  factory CreateCardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCardRequestFromJson(json);

  /// Converts a [CreateCardRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCardRequestToJson(this);

  final String idempotencyKey;
  final String sourceId;
  final String? verificationToken;
  final Card card;

  @override
  List<Object?> get props => [
        idempotencyKey,
        sourceId,
        verificationToken,
        card,
      ];
}

@JsonSerializable()
class CreateCardResponse extends SquareResponse {
  const CreateCardResponse({this.card, super.errors});

  /// Converts a [Map] to an [CreateCardResponse]
  factory CreateCardResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCardResponseFromJson(json);

  /// Converts a [CreateCardResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateCardResponseToJson(this);

  final Card? card;

  @override
  List<Object?> get props => [errors, card];
}
