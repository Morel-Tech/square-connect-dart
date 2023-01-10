// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_retrieve_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchRetrieveOrdersRequest _$BatchRetrieveOrdersRequestFromJson(
        Map<String, dynamic> json) =>
    BatchRetrieveOrdersRequest(
      orderIds:
          (json['order_ids'] as List<dynamic>).map((e) => e as String).toList(),
      locationId: json['location_id'] as String?,
    );

Map<String, dynamic> _$BatchRetrieveOrdersRequestToJson(
    BatchRetrieveOrdersRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  val['order_ids'] = instance.orderIds;
  return val;
}

BatchRetrieveOrdersResponse _$BatchRetrieveOrdersResponseFromJson(
        Map<String, dynamic> json) =>
    BatchRetrieveOrdersResponse(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BatchRetrieveOrdersResponseToJson(
    BatchRetrieveOrdersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('orders', instance.orders?.map((e) => e.toJson()).toList());
  return val;
}
