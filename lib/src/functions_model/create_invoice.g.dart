// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateInvoiceRequest _$CreateInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    CreateInvoiceRequest(
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      idempotencyKey: json['idempotency_key'] as String?,
    );

Map<String, dynamic> _$CreateInvoiceRequestToJson(
    CreateInvoiceRequest instance) {
  final val = <String, dynamic>{
    'invoice': instance.invoice.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  return val;
}

CreateInvoiceResponse _$CreateInvoiceResponseFromJson(
        Map<String, dynamic> json) =>
    CreateInvoiceResponse(
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateInvoiceResponseToJson(
    CreateInvoiceResponse instance) {
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
