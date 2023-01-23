// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_invoices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchInvoicesRequest _$SearchInvoicesRequestFromJson(
        Map<String, dynamic> json) =>
    SearchInvoicesRequest(
      query: InvoiceQuery.fromJson(json['query'] as Map<String, dynamic>),
      limit: json['limit'] as int?,
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$SearchInvoicesRequestToJson(
    SearchInvoicesRequest instance) {
  final val = <String, dynamic>{
    'query': instance.query.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('cursor', instance.cursor);
  return val;
}

SearchInvoicesResponse _$SearchInvoicesResponseFromJson(
        Map<String, dynamic> json) =>
    SearchInvoicesResponse(
      invoices: (json['invoices'] as List<dynamic>?)
          ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchInvoicesResponseToJson(
    SearchInvoicesResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('invoices', instance.invoices?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
