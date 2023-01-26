// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_token_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveTokenStatusResponse _$RetrieveTokenStatusResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveTokenStatusResponse(
      clientId: json['client_id'] as String?,
      expiresAt: json['expires_at'] as String?,
      merchantId: json['merchant_id'] as String?,
      scopes:
          (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveTokenStatusResponseToJson(
    RetrieveTokenStatusResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('scopes', instance.scopes);
  writeNotNull('expires_at', instance.expiresAt);
  writeNotNull('client_id', instance.clientId);
  writeNotNull('merchant_id', instance.merchantId);
  return val;
}
