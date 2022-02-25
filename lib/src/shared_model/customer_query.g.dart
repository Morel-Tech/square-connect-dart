// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerQuery _$CustomerQueryFromJson(Map<String, dynamic> json) =>
    CustomerQuery(
      filter: json['filter'] == null
          ? null
          : CustomerFilter.fromJson(json['filter'] as Map<String, dynamic>),
      sort: json['sort'] == null
          ? null
          : CustomerSort.fromJson(json['sort'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerQueryToJson(CustomerQuery instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'sort': instance.sort?.toJson(),
    };
