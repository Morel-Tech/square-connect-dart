// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteInvoiceResponse _$DeleteInvoiceResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteInvoiceResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeleteInvoiceResponseToJson(
    DeleteInvoiceResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  return val;
}
