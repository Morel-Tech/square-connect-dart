// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceApplication _$SourceApplicationFromJson(Map<String, dynamic> json) =>
    SourceApplication(
      product: $enumDecode(_$ProductEnumMap, json['product']),
      applicationId: json['application_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SourceApplicationToJson(SourceApplication instance) =>
    <String, dynamic>{
      'product': _$ProductEnumMap[instance.product]!,
      'application_id': instance.applicationId,
      'name': instance.name,
    };

const _$ProductEnumMap = {
  Product.squarePos: 'SQUARE_POS',
  Product.externalApi: 'EXTERNAL_API',
  Product.billing: 'BILLING',
  Product.appointments: 'APPOINTMENTS',
  Product.invoices: 'INVOICES',
  Product.onlineStore: 'ONLINE_STORE',
  Product.payroll: 'PAYROLL',
  Product.dashboard: 'DASHBOARD',
  Product.itemLibraryImport: 'ITEM_LIBRARY_IMPORT',
  Product.other: 'OTHER',
};
