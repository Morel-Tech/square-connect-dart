import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_loyalty_program.g.dart';

@JsonSerializable()
class RetrieveLoyaltyProgramResponse extends SquareResponse {
  const RetrieveLoyaltyProgramResponse({super.errors, this.program});

  /// Converts a [Map] to an [RetrieveLoyaltyProgramResponse]
  factory RetrieveLoyaltyProgramResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveLoyaltyProgramResponseFromJson(json);

  /// Converts a [RetrieveLoyaltyProgramResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveLoyaltyProgramResponseToJson(this);

  final LoyaltyProgram? program;

  @override
  List<Object?> get props => [errors, program];
}
