import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_loyalty_account.g.dart';

@JsonSerializable()
class RetrieveLoyaltyAccountResponse extends SquareResponse {
  const RetrieveLoyaltyAccountResponse({super.errors, this.loyaltyAccount});

  /// Converts a [Map] to an [RetrieveLoyaltyAccountResponse]
  factory RetrieveLoyaltyAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveLoyaltyAccountResponseFromJson(json);

  /// Converts a [RetrieveLoyaltyAccountResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveLoyaltyAccountResponseToJson(this);

  final LoyaltyAccount? loyaltyAccount;

  @override
  List<Object?> get props => [errors, loyaltyAccount];
}
