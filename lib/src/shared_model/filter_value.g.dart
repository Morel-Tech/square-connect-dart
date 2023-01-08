// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterValue _$FilterValueFromJson(Map<String, dynamic> json) => FilterValue(
      all: (json['all'] as List<dynamic>?)?.map((e) => e as String).toList(),
      any: (json['any'] as List<dynamic>?)?.map((e) => e as String).toList(),
      none: (json['none'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FilterValueToJson(FilterValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('all', instance.all);
  writeNotNull('any', instance.any);
  writeNotNull('none', instance.none);
  return val;
}
