// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_payment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankAccountPaymentDetails _$BankAccountPaymentDetailsFromJson(
        Map<String, dynamic> json) =>
    BankAccountPaymentDetails(
      accountOwnershipType: json['account_ownership_type'] as String?,
      achDetails: json['ach_details'] == null
          ? null
          : AchDetails.fromJson(json['ach_details'] as Map<String, dynamic>),
      bankName: json['bank_name'] as String?,
      country: json['country'] as String?,
      fingerprint: json['fingerprint'] as String?,
      statementDescription: json['statement_description'] as String?,
      transferType: json['transfer_type'] as String?,
    );

Map<String, dynamic> _$BankAccountPaymentDetailsToJson(
    BankAccountPaymentDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('account_ownership_type', instance.accountOwnershipType);
  writeNotNull('ach_details', instance.achDetails?.toJson());
  writeNotNull('bank_name', instance.bankName);
  writeNotNull('country', instance.country);
  writeNotNull('fingerprint', instance.fingerprint);
  writeNotNull('statement_description', instance.statementDescription);
  writeNotNull('transfer_type', instance.transferType);
  return val;
}
