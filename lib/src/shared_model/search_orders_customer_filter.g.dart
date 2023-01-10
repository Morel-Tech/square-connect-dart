// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders_customer_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersCustomerFilter _$SearchOrdersCustomerFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersCustomerFilter(
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersCustomerFilterToJson(
    SearchOrdersCustomerFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_ids', instance.customerIds);
  return val;
}
