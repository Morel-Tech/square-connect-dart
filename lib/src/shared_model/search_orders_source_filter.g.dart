// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders_source_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersSourceFilter _$SearchOrdersSourceFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersSourceFilter(
      sourceNames: (json['source_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersSourceFilterToJson(
    SearchOrdersSourceFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source_names', instance.sourceNames);
  return val;
}
