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
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      loyaltyAccount: json['loyalty_account'] == null
          ? null
          : LoyaltyAccount.fromJson(
              json['loyalty_account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateLoyaltyAccountResponseToJson(
        CreateLoyaltyAccountResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'loyalty_account': instance.loyaltyAccount?.toJson(),
    };
