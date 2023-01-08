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

Map<String, dynamic> _$AchDetailsToJson(AchDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('account_number_suffix', instance.accountNumberSuffix);
  writeNotNull('account_type', instance.accountType);
  writeNotNull('routing_number', instance.routingNumber);
  return val;
}
