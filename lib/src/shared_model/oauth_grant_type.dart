import 'package:json_annotation/json_annotation.dart';

enum OAuthGrantType {
  @JsonValue('authorization_code')
  authorizationCode,
  @JsonValue('refresh_token')
  refreshToken,
  @JsonValue('migration_token')
  migrationToken,
}
