import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'revoke_token.g.dart';

@JsonSerializable()
class RevokeTokenRequest extends Equatable {
  const RevokeTokenRequest({
    required this.clientId,
    required this.accessToken,
    required this.merchantId,
    this.revokeOnlyAccessToken,
  });

  /// Converts a [Map] to an [RevokeTokenRequest]
  factory RevokeTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RevokeTokenRequestFromJson(json);

  /// Converts a [RevokeTokenRequest] to a [Map]
  Map<String, dynamic> toJson() => _$RevokeTokenRequestToJson(this);

  final String clientId;
  final String accessToken;
  final String merchantId;
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
class RevokeTokenResponse extends Equatable {
  const RevokeTokenResponse({
    required this.success,
  });

  /// Converts a [Map] to an [RevokeTokenResponse]
  factory RevokeTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RevokeTokenResponseFromJson(json);

  /// Converts a [RevokeTokenResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RevokeTokenResponseToJson(this);

  final bool success;

  @override
  List<Object> get props => [success];
}
