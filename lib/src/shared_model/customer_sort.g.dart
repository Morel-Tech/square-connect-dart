// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerSort _$CustomerSortFromJson(Map<String, dynamic> json) => CustomerSort(
      field: $enumDecodeNullable(_$CustomerSortFieldEnumMap, json['field']),
      order: $enumDecodeNullable(_$SortOrderEnumMap, json['order']),
    );

Map<String, dynamic> _$CustomerSortToJson(CustomerSort instance) =>
    <String, dynamic>{
      'field': _$CustomerSortFieldEnumMap[instance.field],
      'order': _$SortOrderEnumMap[instance.order],
    };

const _$CustomerSortFieldEnumMap = {
  CustomerSortField.createdAt: 'CREATED_AT',
  CustomerSortField.defaultValue: 'DEFAULT',
};

const _$SortOrderEnumMap = {
  SortOrder.ascending: 'ASCENDING',
  SortOrder.descending: 'DESCENDING',
};
