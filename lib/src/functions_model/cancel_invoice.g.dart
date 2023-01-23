// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelInvoiceRequest _$CancelInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    CancelInvoiceRequest(
      version: json['version'] as int,
    );

Map<String, dynamic> _$CancelInvoiceRequestToJson(
        CancelInvoiceRequest instance) =>
    <String, dynamic>{
      'version': instance.version,
    };

CancelInvoiceResponse _$CancelInvoiceResponseFromJson(
        Map<String, dynamic> json) =>
    CancelInvoiceResponse(
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CancelInvoiceResponseToJson(
    CancelInvoiceResponse instance) {
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
