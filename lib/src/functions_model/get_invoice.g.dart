// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInvoiceResponse _$GetInvoiceResponseFromJson(Map<String, dynamic> json) =>
    GetInvoiceResponse(
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetInvoiceResponseToJson(GetInvoiceResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('invoice', instance.invoice?.toJson());
  return val;
}
