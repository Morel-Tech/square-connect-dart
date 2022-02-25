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

Map<String, dynamic> _$FilterValueToJson(FilterValue instance) =>
    <String, dynamic>{
      'all': instance.all,
      'any': instance.any,
      'none': instance.none,
    };
