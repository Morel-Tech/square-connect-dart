// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceRecipient _$InvoiceRecipientFromJson(Map<String, dynamic> json) =>
    InvoiceRecipient(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      companyName: json['company_name'] as String?,
      customerId: json['customer_id'] as String?,
      emailAddress: json['email_address'] as String?,
      familyName: json['family_name'] as String?,
      givenName: json['given_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      taxIds: json['tax_ids'] == null
          ? null
          : InvoiceRecipientTaxIds.fromJson(
              json['tax_ids'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceRecipientToJson(InvoiceRecipient instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address?.toJson());
  writeNotNull('company_name', instance.companyName);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('family_name', instance.familyName);
  writeNotNull('given_name', instance.givenName);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('tax_ids', instance.taxIds?.toJson());
  return val;
}
