import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_loyalty_account.g.dart';

@JsonSerializable()
class CreateLoyaltyAccountRequest extends Equatable {
  const CreateLoyaltyAccountRequest({
    required this.loyaltyAccount,
    required this.idempotencyKey,
  });

  /// Converts a [Map] to an [CreateLoyaltyAccountRequest]
  factory CreateLoyaltyAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateLoyaltyAccountRequestFromJson(json);

  /// Converts a [CreateLoyaltyAccountRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateLoyaltyAccountRequestToJson(this);

  final LoyaltyAccount loyaltyAccount;
  final String idempotencyKey;

  @override
  List<Object?> get props => [loyaltyAccount, idempotencyKey];
}

@JsonSerializable()
class CreateLoyaltyAccountResponse extends SquareResponse {
  const CreateLoyaltyAccountResponse({
    super.errors,
    required this.loyaltyAccount,
  });

  /// Converts a [Map] to an [CreateLoyaltyAccountResponse]
  factory CreateLoyaltyAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLoyaltyAccountResponseFromJson(json);

  /// Converts a [CreateLoyaltyAccountResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateLoyaltyAccountResponseToJson(this);

  final LoyaltyAccount? loyaltyAccount;

  @override
  List<Object?> get props => [errors, loyaltyAccount];
}
