// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_payment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankAccountPaymentDetails _$BankAccountPaymentDetailsFromJson(
        Map<String, dynamic> json) =>
    BankAccountPaymentDetails(
      accountOwnershipType: json['accountOwnershipType'] as String?,
      achDetails: json['achDetails'] == null
          ? null
          : AchDetails.fromJson(json['achDetails'] as Map<String, dynamic>),
      bankName: json['bankName'] as String?,
      country: json['country'] as String?,
      fingerprint: json['fingerprint'] as String?,
      statementDescription: json['statementDescription'] as String?,
      transferType: json['transferType'] as String?,
    );

Map<String, dynamic> _$BankAccountPaymentDetailsToJson(
        BankAccountPaymentDetails instance) =>
    <String, dynamic>{
      'accountOwnershipType': instance.accountOwnershipType,
      'achDetails': instance.achDetails,
      'bankName': instance.bankName,
      'country': instance.country,
      'fingerprint': instance.fingerprint,
      'statementDescription': instance.statementDescription,
      'transferType': instance.transferType,
    };
