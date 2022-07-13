import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'oauth_authorization_revoked.g.dart';

@JsonSerializable()
class OauthAuthorizationRevokedEvent extends WebhookEvent {
  const OauthAuthorizationRevokedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [OauthAuthorizationRevokedEvent]
  factory OauthAuthorizationRevokedEvent.fromJson(Map<String, dynamic> json) =>
      _$OauthAuthorizationRevokedEventFromJson(json);

  /// Converts a [OauthAuthorizationRevokedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$OauthAuthorizationRevokedEventToJson(this);

  final OauthAuthorizationRevokedWebhookData data;

  @override
  List<Object> get props => [...super.props, data];
}

@JsonSerializable()
class OauthAuthorizationRevokedWebhookData extends Equatable {
  const OauthAuthorizationRevokedWebhookData({
    required this.id,
    required this.type,
    required this.object,
  });

  /// Converts a [Map] to an [OauthAuthorizationRevokedWebhookData]
  factory OauthAuthorizationRevokedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OauthAuthorizationRevokedWebhookDataFromJson(json);

  /// Converts a [OauthAuthorizationRevokedWebhookData] to a [Map]
  Map<String, dynamic> toJson() =>
      _$OauthAuthorizationRevokedWebhookDataToJson(this);

  /// Not applicable, revocation is not an object
  final String id;
  final String type;
  final OauthAuthorizationRevokedWebhookObject object;

  @override
  List<Object> get props => [id, type, object];
}

@JsonSerializable()
class OauthAuthorizationRevokedWebhookObject extends Equatable {
  const OauthAuthorizationRevokedWebhookObject({
    required this.revocation,
  });

  /// Converts a [Map] to an [OauthAuthorizationRevokedWebhookObject]
  factory OauthAuthorizationRevokedWebhookObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OauthAuthorizationRevokedWebhookObjectFromJson(
        json,
      );

  /// Converts a [OauthAuthorizationRevokedWebhookObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$OauthAuthorizationRevokedWebhookObjectToJson(this);

  final OauthAuthorizationRevokedWebhookRevocationObject revocation;

  @override
  List<Object> get props => [revocation];
}

@JsonSerializable()
class OauthAuthorizationRevokedWebhookRevocationObject extends Equatable {
  const OauthAuthorizationRevokedWebhookRevocationObject({
    required this.revokedAt,
    required this.revokerType,
  });

  /// Converts a [Map] to an [OauthAuthorizationRevokedWebhookRevocationObject]
  factory OauthAuthorizationRevokedWebhookRevocationObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OauthAuthorizationRevokedWebhookRevocationObjectFromJson(json);

  /// Converts a [OauthAuthorizationRevokedWebhookRevocationObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$OauthAuthorizationRevokedWebhookRevocationObjectToJson(this);

  final DateTime revokedAt;
  final OauthAuthorizationRevokedWebhookRevokerType revokerType;

  @override
  List<Object> get props => [revokedAt, revokerType];
}

enum OauthAuthorizationRevokedWebhookRevokerType {
  @JsonValue('APPLICATION')

  /// The application that requested access to a merchant's data.
  application,
  @JsonValue('MERCHANT')

  /// The admin for the merchant.
  merchant,
  @JsonValue('SQUARE')

  /// An internal Square employee.
  square,
}
