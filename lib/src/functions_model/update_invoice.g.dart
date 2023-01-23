// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInvoiceRequest _$UpdateInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateInvoiceRequest(
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      idempotencyKey: json['idempotency_key'] as String?,
      fieldsToClear: (json['fields_to_clear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UpdateInvoiceRequestToJson(
    UpdateInvoiceRequest instance) {
  final val = <String, dynamic>{
    'invoice': instance.invoice.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('fields_to_clear', instance.fieldsToClear);
  return val;
}

UpdateInvoiceResponse _$UpdateInvoiceResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateInvoiceResponse(
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateInvoiceResponseToJson(
    UpdateInvoiceResponse instance) {
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
