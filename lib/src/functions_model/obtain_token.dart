import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'obtain_token.g.dart';

@JsonSerializable()
class ObtainTokenRequest extends Equatable {
  const ObtainTokenRequest({
    required this.clientId,
    required this.clientSecret,
    this.code,
    this.redirectUri,
    required this.grantType,
    this.refreshToken,
    this.migrationToken,
    this.scopes,
    this.shortLived,
  });

  /// Converts a [Map] to an [ObtainTokenRequest]
  factory ObtainTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$ObtainTokenRequestFromJson(json);

  /// Converts a [ObtainTokenRequest] to a [Map]
  Map<String, dynamic> toJson() => _$ObtainTokenRequestToJson(this);

  final String clientId;
  final String clientSecret;
  final String? code;
  final String? redirectUri;
  final OAuthGrantType grantType;
  final String? refreshToken;
  final String? migrationToken;
  final List<OAuthScope>? scopes;
  final bool? shortLived;

  @override
  List<Object?> get props {
    return [
      clientId,
      clientSecret,
      code,
      redirectUri,
      grantType,
      refreshToken,
      migrationToken,
      scopes,
      shortLived,
    ];
  }
}

@JsonSerializable()
class ObtainTokenResponse extends Equatable {
  const ObtainTokenResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresAt,
    required this.merchantId,
    this.subscriptionId,
    this.planId,
    this.idToken,
    required this.refreshToken,
    this.shortLived,
  });

  /// Converts a [Map] to an [ObtainTokenResponse]
  factory ObtainTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$ObtainTokenResponseFromJson(json);

  /// Converts a [ObtainTokenResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ObtainTokenResponseToJson(this);

  final String accessToken;
  final String tokenType;
  final DateTime expiresAt;
  final String merchantId;
  final String? subscriptionId;
  final String? planId;
  final String? idToken;
  final String refreshToken;
  final bool? shortLived;

  @override
  List<Object?> get props {
    return [
      accessToken,
      tokenType,
      expiresAt,
      merchantId,
      subscriptionId,
      planId,
      idToken,
      refreshToken,
      shortLived,
    ];
  }
}
