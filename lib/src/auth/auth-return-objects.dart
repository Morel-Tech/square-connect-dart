import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/super-classes.dart';

/// Response from the `createMobileAuthorizationCode()` method.
class CreateMobileAuthorizationCodeResponse extends ApiResponse {
  final String authorizationCode;
  final DateTime expiresAt;
  final SquareError error;

  List<SquareError> get errors {
    if (error == null) return null;
    return [error];
  }

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
}
