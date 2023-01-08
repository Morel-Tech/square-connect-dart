// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_tax_ids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerTaxIds _$CustomerTaxIdsFromJson(Map<String, dynamic> json) =>
    CustomerTaxIds(
      euVat: json['eu_vat'] as String?,
    );

Map<String, dynamic> _$CustomerTaxIdsToJson(CustomerTaxIds instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eu_vat', instance.euVat);
  return val;
}
