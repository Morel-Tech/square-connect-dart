// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders_sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersSort _$SearchOrdersSortFromJson(Map<String, dynamic> json) =>
    SearchOrdersSort(
      sortField:
          $enumDecode(_$SearchOrdersSortFieldEnumMap, json['sort_field']),
      sortOrder: $enumDecodeNullable(_$SortOrderEnumMap, json['sort_order']),
    );

Map<String, dynamic> _$SearchOrdersSortToJson(SearchOrdersSort instance) {
  final val = <String, dynamic>{
    'sort_field': _$SearchOrdersSortFieldEnumMap[instance.sortField]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort_order', _$SortOrderEnumMap[instance.sortOrder]);
  return val;
}

const _$SearchOrdersSortFieldEnumMap = {
  SearchOrdersSortField.createdAt: 'CREATED_AT',
  SearchOrdersSortField.updatedAt: 'UPDATED_AT',
  SearchOrdersSortField.closedAt: 'CLOSED_AT',
};

const _$SortOrderEnumMap = {
  SortOrder.ascending: 'ASCENDING',
  SortOrder.descending: 'DESCENDING',
};
