// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersQuery _$SearchOrdersQueryFromJson(Map<String, dynamic> json) =>
    SearchOrdersQuery(
      filter: json['filter'] == null
          ? null
          : SearchOrdersFilter.fromJson(json['filter'] as Map<String, dynamic>),
      sort: json['sort'] == null
          ? null
          : SearchOrdersSort.fromJson(json['sort'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchOrdersQueryToJson(SearchOrdersQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter?.toJson());
  writeNotNull('sort', instance.sort?.toJson());
  return val;
}
