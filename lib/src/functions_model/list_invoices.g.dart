// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_invoices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListInvoicesResponse _$ListInvoicesResponseFromJson(
        Map<String, dynamic> json) =>
    ListInvoicesResponse(
      invoices: (json['invoices'] as List<dynamic>?)
          ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListInvoicesResponseToJson(
    ListInvoicesResponse instance) {
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
