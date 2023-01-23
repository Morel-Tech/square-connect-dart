// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceSort _$InvoiceSortFromJson(Map<String, dynamic> json) => InvoiceSort(
      field: $enumDecode(_$InvoiceSortFieldEnumMap, json['field']),
      order: $enumDecodeNullable(_$SortOrderEnumMap, json['order']),
    );

Map<String, dynamic> _$InvoiceSortToJson(InvoiceSort instance) {
  final val = <String, dynamic>{
    'field': _$InvoiceSortFieldEnumMap[instance.field]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', _$SortOrderEnumMap[instance.order]);
  return val;
}

const _$InvoiceSortFieldEnumMap = {
  InvoiceSortField.invoiceSortDate: 'INVOICE_SORT_DATE',
};

const _$SortOrderEnumMap = {
  SortOrder.ascending: 'ASC',
  SortOrder.descending: 'DESC',
};
