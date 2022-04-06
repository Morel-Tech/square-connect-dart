// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RevokeTokenRequest _$RevokeTokenRequestFromJson(Map<String, dynamic> json) =>
    RevokeTokenRequest(
      clientId: json['client_id'] as String,
      accessToken: json['access_token'] as String?,
      merchantId: json['merchant_id'] as String?,
      revokeOnlyAccessToken: json['revoke_only_access_token'] as bool?,
    );

Map<String, dynamic> _$RevokeTokenRequestToJson(RevokeTokenRequest instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'access_token': instance.accessToken,
      'merchant_id': instance.merchantId,
      'revoke_only_access_token': instance.revokeOnlyAccessToken,
    };

RevokeTokenResponse _$RevokeTokenResponseFromJson(Map<String, dynamic> json) =>
    RevokeTokenResponse(
      success: json['success'] as bool,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RevokeTokenResponseToJson(
        RevokeTokenResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'success': instance.success,
    };
