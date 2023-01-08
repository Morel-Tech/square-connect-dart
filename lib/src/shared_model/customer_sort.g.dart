// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerSort _$CustomerSortFromJson(Map<String, dynamic> json) => CustomerSort(
      field: $enumDecodeNullable(_$CustomerSortFieldEnumMap, json['field']),
      order: $enumDecodeNullable(_$SortOrderEnumMap, json['order']),
    );

Map<String, dynamic> _$CustomerSortToJson(CustomerSort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', _$CustomerSortFieldEnumMap[instance.field]);
  writeNotNull('order', _$SortOrderEnumMap[instance.order]);
  return val;
}

const _$CustomerSortFieldEnumMap = {
  CustomerSortField.createdAt: 'CREATED_AT',
  CustomerSortField.defaultValue: 'DEFAULT',
};

const _$SortOrderEnumMap = {
  SortOrder.ascending: 'ASCENDING',
  SortOrder.descending: 'DESCENDING',
};
