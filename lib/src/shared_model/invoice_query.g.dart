// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceQuery _$InvoiceQueryFromJson(Map<String, dynamic> json) => InvoiceQuery(
      filter: InvoiceFilter.fromJson(json['filter'] as Map<String, dynamic>),
      sort: json['sort'] == null
          ? null
          : InvoiceSort.fromJson(json['sort'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceQueryToJson(InvoiceQuery instance) {
  final val = <String, dynamic>{
    'filter': instance.filter.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort', instance.sort?.toJson());
  return val;
}
