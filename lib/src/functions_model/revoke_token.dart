import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'revoke_token.g.dart';

@JsonSerializable()
class RevokeTokenRequest extends Equatable {
  const RevokeTokenRequest({
    required this.clientId,
    this.accessToken,
    this.merchantId,
    this.revokeOnlyAccessToken,
  });

  /// Converts a [Map] to an [RevokeTokenRequest]
  factory RevokeTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RevokeTokenRequestFromJson(json);

  /// Converts a [RevokeTokenRequest] to a [Map]
  Map<String, dynamic> toJson() => _$RevokeTokenRequestToJson(this);

  final String clientId;
  final String? accessToken;
  final String? merchantId;
  final bool? revokeOnlyAccessToken;

  @override
  List<Object?> get props => [
        clientId,
        accessToken,
        merchantId,
        revokeOnlyAccessToken,
      ];
}

@JsonSerializable()
class RevokeTokenResponse extends SquareResponse {
  const RevokeTokenResponse({
    required this.success,
    super.errors,
  });

  /// Converts a [Map] to an [RevokeTokenResponse]
  factory RevokeTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RevokeTokenResponseFromJson(json);

  /// Converts a [RevokeTokenResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RevokeTokenResponseToJson(this);

  final bool success;

  @override
  List<Object?> get props => [success, errors];
}
