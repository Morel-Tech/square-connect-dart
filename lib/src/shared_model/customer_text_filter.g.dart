// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_text_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerTextFilter _$CustomerTextFilterFromJson(Map<String, dynamic> json) =>
    CustomerTextFilter(
      exact: json['exact'] as String?,
      fuzzy: json['fuzzy'] as String?,
    );

Map<String, dynamic> _$CustomerTextFilterToJson(CustomerTextFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exact', instance.exact);
  writeNotNull('fuzzy', instance.fuzzy);
  return val;
}
