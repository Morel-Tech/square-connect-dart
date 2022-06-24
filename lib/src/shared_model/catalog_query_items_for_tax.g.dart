// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_query_items_for_tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogQueryItemsForTax _$CatalogQueryItemsForTaxFromJson(
        Map<String, dynamic> json) =>
    CatalogQueryItemsForTax(
      taxIds:
          (json['tax_ids'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CatalogQueryItemsForTaxToJson(
        CatalogQueryItemsForTax instance) =>
    <String, dynamic>{
      'tax_ids': instance.taxIds,
    };
