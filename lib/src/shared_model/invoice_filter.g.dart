// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceFilter _$InvoiceFilterFromJson(Map<String, dynamic> json) =>
    InvoiceFilter(
      locationIds: (json['location_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$InvoiceFilterToJson(InvoiceFilter instance) {
  final val = <String, dynamic>{
    'location_ids': instance.locationIds,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_ids', instance.customerIds);
  return val;
}
