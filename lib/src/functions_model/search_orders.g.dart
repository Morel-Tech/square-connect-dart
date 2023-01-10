// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersRequest _$SearchOrdersRequestFromJson(Map<String, dynamic> json) =>
    SearchOrdersRequest(
      locationIds: (json['location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cursor: json['cursor'] as String?,
      query: json['query'] == null
          ? null
          : SearchOrdersQuery.fromJson(json['query'] as Map<String, dynamic>),
      limit: json['limit'] as int?,
      returnEntries: json['return_entries'] as bool?,
    );

Map<String, dynamic> _$SearchOrdersRequestToJson(SearchOrdersRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_ids', instance.locationIds);
  writeNotNull('cursor', instance.cursor);
  writeNotNull('query', instance.query?.toJson());
  writeNotNull('limit', instance.limit);
  writeNotNull('return_entries', instance.returnEntries);
  return val;
}

SearchOrdersResponse _$SearchOrdersResponseFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersResponse(
      orderEntries: (json['order_entries'] as List<dynamic>?)
          ?.map((e) => OrderEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersResponseToJson(
    SearchOrdersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull(
      'order_entries', instance.orderEntries?.map((e) => e.toJson()).toList());
  writeNotNull('orders', instance.orders?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);
  return val;
}
