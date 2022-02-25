// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerSort _$CustomerSortFromJson(Map<String, dynamic> json) => CustomerSort(
      field: _$enumDecodeNullable(_$CustomerSortFieldEnumMap, json['field']),
      order: _$enumDecodeNullable(_$SortOrderEnumMap, json['order']),
    );

Map<String, dynamic> _$CustomerSortToJson(CustomerSort instance) =>
    <String, dynamic>{
      'field': _$CustomerSortFieldEnumMap[instance.field],
      'order': _$SortOrderEnumMap[instance.order],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$CustomerSortFieldEnumMap = {
  CustomerSortField.createdAt: 'CREATED_AT',
  CustomerSortField.defaultValue: 'DEFAULT',
};

const _$SortOrderEnumMap = {
  SortOrder.ascending: 'ASCENDING',
  SortOrder.descending: 'DESCENDING',
};
