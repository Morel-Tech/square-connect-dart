// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_authorization_revoked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OauthAuthorizationRevokedEvent _$OauthAuthorizationRevokedEventFromJson(
        Map<String, dynamic> json) =>
    OauthAuthorizationRevokedEvent(
      merchantId: json['merchant_id'] as String,
      type: json['type'] as String,
      eventId: json['event_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: OauthAuthorizationRevokedWebhookData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OauthAuthorizationRevokedEventToJson(
        OauthAuthorizationRevokedEvent instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'type': instance.type,
      'event_id': instance.eventId,
      'created_at': instance.createdAt.toIso8601String(),
      'data': instance.data.toJson(),
    };

OauthAuthorizationRevokedWebhookData
    _$OauthAuthorizationRevokedWebhookDataFromJson(Map<String, dynamic> json) =>
        OauthAuthorizationRevokedWebhookData(
          id: json['id'] as String,
          type: json['type'] as String,
          object: OauthAuthorizationRevokedWebhookObject.fromJson(
              json['object'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$OauthAuthorizationRevokedWebhookDataToJson(
        OauthAuthorizationRevokedWebhookData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'object': instance.object.toJson(),
    };

OauthAuthorizationRevokedWebhookObject
    _$OauthAuthorizationRevokedWebhookObjectFromJson(
            Map<String, dynamic> json) =>
        OauthAuthorizationRevokedWebhookObject(
          revocation: OauthAuthorizationRevokedWebhookRevocationObject.fromJson(
              json['revocation'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$OauthAuthorizationRevokedWebhookObjectToJson(
        OauthAuthorizationRevokedWebhookObject instance) =>
    <String, dynamic>{
      'revocation': instance.revocation.toJson(),
    };

OauthAuthorizationRevokedWebhookRevocationObject
    _$OauthAuthorizationRevokedWebhookRevocationObjectFromJson(
            Map<String, dynamic> json) =>
        OauthAuthorizationRevokedWebhookRevocationObject(
          revokedAt: DateTime.parse(json['revoked_at'] as String),
          revokerType: $enumDecode(
              _$OauthAuthorizationRevokedWebhookRevokerTypeEnumMap,
              json['revoker_type']),
        );

Map<String, dynamic> _$OauthAuthorizationRevokedWebhookRevocationObjectToJson(
        OauthAuthorizationRevokedWebhookRevocationObject instance) =>
    <String, dynamic>{
      'revoked_at': instance.revokedAt.toIso8601String(),
      'revoker_type': _$OauthAuthorizationRevokedWebhookRevokerTypeEnumMap[
          instance.revokerType],
    };

const _$OauthAuthorizationRevokedWebhookRevokerTypeEnumMap = {
  OauthAuthorizationRevokedWebhookRevokerType.application: 'APPLICATION',
  OauthAuthorizationRevokedWebhookRevokerType.merchant: 'MERCHANT',
  OauthAuthorizationRevokedWebhookRevokerType.square: 'SQUARE',
};
