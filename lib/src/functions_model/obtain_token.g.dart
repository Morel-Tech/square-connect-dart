// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'obtain_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObtainTokenRequest _$ObtainTokenRequestFromJson(Map<String, dynamic> json) =>
    ObtainTokenRequest(
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String,
      grantType: $enumDecode(_$OAuthGrantTypeEnumMap, json['grant_type']),
      code: json['code'] as String?,
      redirectUri: json['redirect_uri'] as String?,
      refreshToken: json['refresh_token'] as String?,
      migrationToken: json['migration_token'] as String?,
      scopes: (json['scopes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OAuthScopeEnumMap, e))
          .toList(),
      shortLived: json['short_lived'] as bool?,
    );

Map<String, dynamic> _$ObtainTokenRequestToJson(ObtainTokenRequest instance) {
  final val = <String, dynamic>{
    'client_id': instance.clientId,
    'client_secret': instance.clientSecret,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('redirect_uri', instance.redirectUri);
  val['grant_type'] = _$OAuthGrantTypeEnumMap[instance.grantType]!;
  writeNotNull('refresh_token', instance.refreshToken);
  writeNotNull('migration_token', instance.migrationToken);
  writeNotNull(
      'scopes', instance.scopes?.map((e) => _$OAuthScopeEnumMap[e]!).toList());
  writeNotNull('short_lived', instance.shortLived);
  return val;
}

const _$OAuthGrantTypeEnumMap = {
  OAuthGrantType.authorizationCode: 'authorization_code',
  OAuthGrantType.refreshToken: 'refresh_token',
  OAuthGrantType.migrationToken: 'migration_token',
};

const _$OAuthScopeEnumMap = {
  OAuthScope.bankAccountsRead: 'BANK_ACCOUNTS_READ',
  OAuthScope.customersRead: 'CUSTOMERS_READ',
  OAuthScope.customersWrite: 'CUSTOMERS_WRITE',
  OAuthScope.employeesRead: 'EMPLOYEES_READ',
  OAuthScope.employeesWrite: 'EMPLOYEES_WRITE',
  OAuthScope.inventoryRead: 'INVENTORY_READ',
  OAuthScope.inventoryWrite: 'INVENTORY_WRITE',
  OAuthScope.itemsRead: 'ITEMS_READ',
  OAuthScope.itemsWrite: 'ITEMS_WRITE',
  OAuthScope.merchantProfileRead: 'MERCHANT_PROFILE_READ',
  OAuthScope.ordersRead: 'ORDERS_READ',
  OAuthScope.ordersWrite: 'ORDERS_WRITE',
  OAuthScope.paymentsRead: 'PAYMENTS_READ',
  OAuthScope.paymentsWrite: 'PAYMENTS_WRITE',
  OAuthScope.paymentsWriteAdditionalRecipients:
      'PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS',
  OAuthScope.paymentsWriteInPerson: 'PAYMENTS_WRITE_IN_PERSON',
  OAuthScope.settlementsRead: 'SETTLEMENTS_READ',
  OAuthScope.timecardsRead: 'TIMECARDS_READ',
  OAuthScope.timecardsWrite: 'TIMECARDS_WRITE',
  OAuthScope.timecardsSettingsRead: 'TIMECARDS_SETTINGS_READ',
  OAuthScope.timecardsSettingsWrite: 'TIMECARDS_SETTINGS_WRITE',
};

ObtainTokenResponse _$ObtainTokenResponseFromJson(Map<String, dynamic> json) =>
    ObtainTokenResponse(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      merchantId: json['merchant_id'] as String,
      refreshToken: json['refresh_token'] as String,
      subscriptionId: json['subscription_id'] as String?,
      planId: json['plan_id'] as String?,
      idToken: json['id_token'] as String?,
      shortLived: json['short_lived'] as bool?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ObtainTokenResponseToJson(ObtainTokenResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  val['access_token'] = instance.accessToken;
  val['token_type'] = instance.tokenType;
  val['expires_at'] = instance.expiresAt.toIso8601String();
  val['merchant_id'] = instance.merchantId;
  writeNotNull('subscription_id', instance.subscriptionId);
  writeNotNull('plan_id', instance.planId);
  writeNotNull('id_token', instance.idToken);
  val['refresh_token'] = instance.refreshToken;
  writeNotNull('short_lived', instance.shortLived);
  return val;
}
