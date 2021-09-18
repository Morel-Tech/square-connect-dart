// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ach_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AchDetails _$AchDetailsFromJson(Map<String, dynamic> json) => AchDetails(
      accountNumberSuffix: json['account_number_suffix'] as String?,
      accountType: json['account_type'] as String?,
      routingNumber: json['routing_number'] as String?,
    );

Map<String, dynamic> _$AchDetailsToJson(AchDetails instance) =>
    <String, dynamic>{
      'account_number_suffix': instance.accountNumberSuffix,
      'account_type': instance.accountType,
      'routing_number': instance.routingNumber,
    };
