// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publish_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublishInvoiceRequest _$PublishInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    PublishInvoiceRequest(
      version: json['version'] as int,
      idempotencyKey: json['idempotency_key'] as String?,
    );

Map<String, dynamic> _$PublishInvoiceRequestToJson(
    PublishInvoiceRequest instance) {
  final val = <String, dynamic>{
    'version': instance.version,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  return val;
}

PublishInvoiceResponse _$PublishInvoiceResponseFromJson(
        Map<String, dynamic> json) =>
    PublishInvoiceResponse(
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PublishInvoiceResponseToJson(
    PublishInvoiceResponse instance) {
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
