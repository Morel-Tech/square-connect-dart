// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_loyalty_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLoyaltyAccountRequest _$CreateLoyaltyAccountRequestFromJson(
        Map<String, dynamic> json) =>
    CreateLoyaltyAccountRequest(
      loyaltyAccount: LoyaltyAccount.fromJson(
          json['loyalty_account'] as Map<String, dynamic>),
      idempotencyKey: json['idempotency_key'] as String,
    );

Map<String, dynamic> _$CreateLoyaltyAccountRequestToJson(
        CreateLoyaltyAccountRequest instance) =>
    <String, dynamic>{
      'loyalty_account': instance.loyaltyAccount.toJson(),
      'idempotency_key': instance.idempotencyKey,
    };

CreateLoyaltyAccountResponse _$CreateLoyaltyAccountResponseFromJson(
        Map<String, dynamic> json) =>
    CreateLoyaltyAccountResponse(
      loyaltyAccount: json['loyalty_account'] == null
          ? null
          : LoyaltyAccount.fromJson(
              json['loyalty_account'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateLoyaltyAccountResponseToJson(
    CreateLoyaltyAccountResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('loyalty_account', instance.loyaltyAccount?.toJson());
  return val;
}
