// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_recipient_tax_ids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceRecipientTaxIds _$InvoiceRecipientTaxIdsFromJson(
        Map<String, dynamic> json) =>
    InvoiceRecipientTaxIds(
      euVat: json['eu_vat'] as String?,
    );

Map<String, dynamic> _$InvoiceRecipientTaxIdsToJson(
    InvoiceRecipientTaxIds instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eu_vat', instance.euVat);
  return val;
}
