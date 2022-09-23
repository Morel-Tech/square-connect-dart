// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_loyalty_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveLoyaltyAccountResponse _$RetrieveLoyaltyAccountResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveLoyaltyAccountResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      loyaltyAccount: json['loyalty_account'] == null
          ? null
          : LoyaltyAccount.fromJson(
              json['loyalty_account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RetrieveLoyaltyAccountResponseToJson(
        RetrieveLoyaltyAccountResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
      'loyalty_account': instance.loyaltyAccount?.toJson(),
    };
