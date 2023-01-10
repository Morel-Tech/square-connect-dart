// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders_date_time_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersDateTimeFilter _$SearchOrdersDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersDateTimeFilter(
      closedAt: json['closed_at'] == null
          ? null
          : TimeRange.fromJson(json['closed_at'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : TimeRange.fromJson(json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : TimeRange.fromJson(json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchOrdersDateTimeFilterToJson(
    SearchOrdersDateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('closed_at', instance.closedAt?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('updated_at', instance.updatedAt?.toJson());
  return val;
}
