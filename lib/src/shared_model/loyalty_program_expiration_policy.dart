import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_program_expiration_policy.g.dart';

@JsonSerializable()
class LoyaltyProgramExpirationPolicy extends Equatable {
  const LoyaltyProgramExpirationPolicy({
    required this.expirationDuration,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [LoyaltyProgramExpirationPolicy]
  factory LoyaltyProgramExpirationPolicy.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramExpirationPolicyFromJson(json);

  /// Converts a [LoyaltyProgramExpirationPolicy] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyProgramExpirationPolicyToJson(this);

  final String expirationDuration;

  @override
  List<Object?> get props => [expirationDuration];
}
