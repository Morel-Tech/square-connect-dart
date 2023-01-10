// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersFilter _$SearchOrdersFilterFromJson(Map<String, dynamic> json) =>
    SearchOrdersFilter(
      stateFilter: json['state_filter'] == null
          ? null
          : SearchOrdersStateFilter.fromJson(
              json['state_filter'] as Map<String, dynamic>),
      dateTimeFilter: json['date_time_filter'] == null
          ? null
          : SearchOrdersDateTimeFilter.fromJson(
              json['date_time_filter'] as Map<String, dynamic>),
      fulfillmentFilter: json['fulfillment_filter'] == null
          ? null
          : SearchOrdersFulfillmentFilter.fromJson(
              json['fulfillment_filter'] as Map<String, dynamic>),
      sourceFilter: json['source_filter'] == null
          ? null
          : SearchOrdersSourceFilter.fromJson(
              json['source_filter'] as Map<String, dynamic>),
      customerFilter: json['customer_filter'] == null
          ? null
          : SearchOrdersCustomerFilter.fromJson(
              json['customer_filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchOrdersFilterToJson(SearchOrdersFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state_filter', instance.stateFilter?.toJson());
  writeNotNull('date_time_filter', instance.dateTimeFilter?.toJson());
  writeNotNull('fulfillment_filter', instance.fulfillmentFilter?.toJson());
  writeNotNull('source_filter', instance.sourceFilter?.toJson());
  writeNotNull('customer_filter', instance.customerFilter?.toJson());
  return val;
}
