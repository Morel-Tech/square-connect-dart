// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ach_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AchDetails _$AchDetailsFromJson(Map<String, dynamic> json) => AchDetails(
      accountNumberSuffix: json['accountNumberSuffix'] as String?,
      accountType: json['accountType'] as String?,
      routingNumber: json['routingNumber'] as String?,
    );

Map<String, dynamic> _$AchDetailsToJson(AchDetails instance) =>
    <String, dynamic>{
      'accountNumberSuffix': instance.accountNumberSuffix,
      'accountType': instance.accountType,
      'routingNumber': instance.routingNumber,
    };
