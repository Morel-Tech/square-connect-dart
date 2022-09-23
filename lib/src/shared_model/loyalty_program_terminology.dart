import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_program_terminology.g.dart';

@JsonSerializable()
class LoyaltyProgramTerminology extends Equatable {
  const LoyaltyProgramTerminology({
    required this.one,
    required this.other,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyProgramTerminology]
  factory LoyaltyProgramTerminology.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramTerminologyFromJson(json);

  /// Converts a [LoyaltyProgramTerminology] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyProgramTerminologyToJson(this);

  final String one;
  final String other;

  @override
  List<Object?> get props => [one, other];
}
