import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_token_status.g.dart';

@JsonSerializable()
class RetrieveTokenStatusResponse extends SquareResponse {
  const RetrieveTokenStatusResponse({
    this.clientId,
    this.expiresAt,
    this.merchantId,
    this.scopes,
    super.errors,
  });

  /// Converts a [Map] to an [RetrieveTokenStatusResponse]
  factory RetrieveTokenStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveTokenStatusResponseFromJson(json);

  /// Converts a [RetrieveTokenStatusResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveTokenStatusResponseToJson(this);

  /// The list of scopes associated with an access token.
  final List<String>? scopes;

  /// The date and time when the access_token expires, in RFC 3339 format.
  /// Empty if token never expires.
  final String? expiresAt;

  /// The Square-issued application ID associated with the access token. This
  /// is the same application ID used to obtain the token.
  final String? clientId;

  /// The ID of the authorizing merchant's business.
  final String? merchantId;

  @override
  List<Object?> get props => [scopes, expiresAt, clientId, merchantId, errors];
}
