// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_account_mapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyAccountMapping _$LoyaltyAccountMappingFromJson(
        Map<String, dynamic> json) =>
    LoyaltyAccountMapping(
      id: json['id'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$LoyaltyAccountMappingToJson(
        LoyaltyAccountMapping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'phone_number': instance.phoneNumber,
    };
