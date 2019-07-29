import 'package:square_connect/square_connect.dart';

/// Response from the `createMobileAuthorizationCode()` method.
class CreateMobileAuthorizationCodeResponse {
  final String authorizationCode;
  final DateTime expiresAt;
  final SquareError error;

  CreateMobileAuthorizationCodeResponse(
      {this.error, this.authorizationCode, this.expiresAt});

  factory CreateMobileAuthorizationCodeResponse.fromJson(
      Map<String, dynamic> json) {
    return CreateMobileAuthorizationCodeResponse(
      error: json['error'] != null ? SquareError.fromJson(json['error']) : null,
      expiresAt: json['expires_at'] != null
          ? DateTime.parse(json['expires_at'])
          : null,
      authorizationCode: json['authorization_code'],
    );
  }

  get hasErrors {
    return error != null;
  }
}
